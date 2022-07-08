// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyState _$$_SurveyStateFromJson(Map<String, dynamic> json) =>
    _$_SurveyState(
      index: json['index'] as int?,
      loadingSurvey: json['loadingSurvey'] as bool?,
      failureLoadingSurvey: json['failureLoadingSurvey'] as String?,
      survey: json['survey'] == null
          ? null
          : Survey.fromJson(json['survey'] as Map<String, dynamic>),
      submittingSurveyAnswers: json['submittingSurveyAnswers'] as bool?,
      failedSubmittingSurveyAnswers:
          json['failedSubmittingSurveyAnswers'] as String?,
      succesfullySubmittedSurveyAnswers:
          json['succesfullySubmittedSurveyAnswers'] as bool?,
      succesfullySubmittedSurveyAnswersToLocalStorage:
          json['succesfullySubmittedSurveyAnswersToLocalStorage'] as bool?,
      surveyAnswers: (json['surveyAnswers'] as List<dynamic>?)
          ?.map((e) => SurveyAnswers.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentQuestion: json['currentQuestion'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      answersLocalStorageKey: json['answersLocalStorageKey'] as int?,
    );

Map<String, dynamic> _$$_SurveyStateToJson(_$_SurveyState instance) =>
    <String, dynamic>{
      'index': instance.index,
      'loadingSurvey': instance.loadingSurvey,
      'failureLoadingSurvey': instance.failureLoadingSurvey,
      'survey': instance.survey,
      'submittingSurveyAnswers': instance.submittingSurveyAnswers,
      'failedSubmittingSurveyAnswers': instance.failedSubmittingSurveyAnswers,
      'succesfullySubmittedSurveyAnswers':
          instance.succesfullySubmittedSurveyAnswers,
      'succesfullySubmittedSurveyAnswersToLocalStorage':
          instance.succesfullySubmittedSurveyAnswersToLocalStorage,
      'surveyAnswers': instance.surveyAnswers,
      'currentQuestion': instance.currentQuestion,
      'answers': instance.answers,
      'answersLocalStorageKey': instance.answersLocalStorageKey,
    };
