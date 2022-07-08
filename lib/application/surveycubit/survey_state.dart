part of 'survey_cubit.dart';

@freezed
class SurveyState with _$SurveyState {
  factory SurveyState({
    //currentPage
    int? index,

    //getting surveys
    bool? loadingSurvey,
    String? failureLoadingSurvey,
    Survey? survey,

    //posting survey answer
    bool? submittingSurveyAnswers,
    String? failedSubmittingSurveyAnswers,
    bool? succesfullySubmittedSurveyAnswers,
    bool? succesfullySubmittedSurveyAnswersToLocalStorage,
    List<SurveyAnswers>? surveyAnswers,

    //current survey question displayed to user
    String? currentQuestion,

    //save answers enter by the user
    List<Answer>? answers,

    //store
    int? answersLocalStorageKey,
  }) = _SurveyState;

  factory SurveyState.fromJson(Map<String, dynamic> json) =>
      _$SurveyStateFromJson(json);

  factory SurveyState.initial() => SurveyState(
        index: 0,
        loadingSurvey: false,
        failureLoadingSurvey: '',
        submittingSurveyAnswers: false,
        failedSubmittingSurveyAnswers: '',
        succesfullySubmittedSurveyAnswers: false,
        succesfullySubmittedSurveyAnswersToLocalStorage: false,
        answers: [],
        surveyAnswers: [],
      );
}
