// ignore_for_file: inference_failure_on_function_invocation, cascade_invocations, prefer_final_locals, unused_local_variable, lines_longer_than_80_chars

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cron/cron.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';
import 'package:wefarm/common/string_constants.dart';
import 'package:wefarm/domain/entities/answer/answer.dart';

import 'package:wefarm/domain/entities/survey/survey.dart';
import 'package:wefarm/domain/interface/survey_interface.dart';

part 'survey_state.dart';
part 'survey_cubit.freezed.dart';
part 'survey_cubit.g.dart';

class SurveyCubit extends Cubit<SurveyState> {
  SurveyCubit({required this.surveyInterface}) : super(SurveyState.initial());

  final SurveyInterface surveyInterface;

  Future<void> fetchSurvey() async {
    emit(
      state.copyWith.call(
        loadingSurvey: true,
        failureLoadingSurvey: '',
      ),
    );

    try {
      final survey = await surveyInterface.fetchSurvey();

      final answers = <Answer>[];

      for (final _ in survey.questions!) {
        answers.add(Answer.initial());
      }

      emit(
        state.copyWith.call(
          loadingSurvey: false,
          failureLoadingSurvey: '',
          survey: survey,
          currentQuestion: survey.questions?[0].questionText,
          answers: answers,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith.call(
          loadingSurvey: false,
          failureLoadingSurvey: 'We failed to load the survey please try again',
        ),
      );
    }
  }

  void addOrUpdateSurveyAnswer({
    required String id,
    required int index,
    required String answer,
    required String question,
  }) {
    List<Answer>? modifiableAnswers = [];

    state.answers?.forEach((a) {
      modifiableAnswers.add(a);
    });

    modifiableAnswers[index] = Answer(
      id: id,
      question: question,
      answer: answer,
    );

    emit(
      state.copyWith.call(
        answers: modifiableAnswers,
      ),
    );
  }

  Future<void> saveAnswersToLocalStorage() async {
    emit(
      state.copyWith.call(
        succesfullySubmittedSurveyAnswersToLocalStorage: false,
      ),
    );

    final surveyAnswers = SurveyAnswers(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      answers: state.answers,
    );

    emit(
      state.copyWith
          .call(surveyAnswers: [...state.surveyAnswers!, surveyAnswers]),
    );

    //save answers to local storage
    final box = Hive.box<List<SurveyAnswers>>(surveyAnswerBox);
    final value = await box.add(state.surveyAnswers!);

    //report success
    emit(
      state.copyWith.call(
        succesfullySubmittedSurveyAnswersToLocalStorage: true,
        answers: [],
        answersLocalStorageKey: value,
      ),
    );
  }

  void changePage({required int index}) {
    emit(state.copyWith.call(index: index));
  }

  Future<void> initiateCronJob() async {
    final cron = Cron();

    //setup cron job run every 15 minutes
    cron.schedule(Schedule.parse('*/15 * * * *'), () async {
      var isOnline = await SimpleConnectionChecker.isConnectedToInternet();
      emit(
        state.copyWith.call(
          submittingSurveyAnswers: false,
          succesfullySubmittedSurveyAnswers: false,
          failedSubmittingSurveyAnswers: '',
          surveyAnswers: [],
        ),
      );
      //check whether the user is online if offline dont do any cron jobs
      if (!isOnline) {
        return;
      }

      //check if we have data in the db if not nothing to send to remote repository
      final box = Hive.box<List<SurveyAnswers>>(surveyAnswerBox);

      var listOfAnswers = box.get(state.answersLocalStorageKey);
      await box.clear();
      if (listOfAnswers == null) {
        return;
      }

      emit(
        state.copyWith.call(
          submittingSurveyAnswers: true,
          succesfullySubmittedSurveyAnswers: false,
          failedSubmittingSurveyAnswers: '',
        ),
      );

      try {
        for (final surveyAnswer in listOfAnswers) {
          await surveyInterface.postAnswers(
            surveyAnswers: SurveyAnswers(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              answers: surveyAnswer.answers,
            ),
          );
        }

        emit(
          state.copyWith.call(
            submittingSurveyAnswers: false,
            succesfullySubmittedSurveyAnswers: true,
            failedSubmittingSurveyAnswers: '',
            surveyAnswers: [],
          ),
        );
      } catch (e) {
        state.copyWith.call(
          submittingSurveyAnswers: false,
          failedSubmittingSurveyAnswers: 'An error occurred. Please try again!',
        );
      }
    });
  }

  void resetSurvey() {
    emit(state.copyWith.call(answers: []));
  }

  void navigateToNextOrPreviousQuestion({
    required int index,
    required bool isForward,
  }) {
    if (state.survey!.questions![index].next == null) {
      emit(
        state.copyWith.call(
          currentQuestion: state.survey!.questions![0].questionText,
        ),
      );
      return;
    } else {
      emit(
        state.copyWith.call(
          currentQuestion: state.survey!.questions![index].next,
        ),
      );
    }
  }
}
