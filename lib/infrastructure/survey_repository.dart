import 'package:hive_flutter/hive_flutter.dart';

import 'package:wefarm/common/string_constants.dart';
import 'package:wefarm/domain/entities/answer/answer.dart';
import 'package:wefarm/domain/entities/survey/survey.dart';
import 'package:wefarm/domain/interface/survey_interface.dart';
import 'package:wefarm/utils/utils.dart';

class SurveyRepository implements SurveyInterface {
  final box = Hive.box<Survey>(surveyBox);

  @override
  Future<Survey> fetchSurvey() async {
    final survey = box.get(surveyKey);

    //check if we have a survey stored locally and return that value instead
    if (survey != null) {
      return survey;
    }

    // //if no survey is stored locaaly fetch from a remote source
    try {
      final _survey = await getSurvey();
      await box.put(surveyKey, _survey);
      return _survey;
    } catch (e) {
      throw Exception('Failed to load survey');
    }
  }

  @override
  Future<void> postAnswers({required SurveyAnswers surveyAnswers}) async {
    final sendAnswers = surveyAnswers.answers!
        .map((answer) async => {postSurvey(answer: answer)})
        .toList();

    try {
      //send all request concurrently
      await Future.wait(sendAnswers);
      return;
    } catch (e) {
      throw Exception('Failed to submit survey');
    }
  }
}
