import 'package:wefarm/domain/entities/answer/answer.dart';
import 'package:wefarm/domain/entities/survey/survey.dart';

abstract class SurveyInterface {
  Future<Survey> fetchSurvey();
  Future<void> postAnswers({required SurveyAnswers surveyAnswers});
}
