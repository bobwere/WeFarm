// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@HiveType(typeId: 10, adapterName: 'SurveyAnswersAdapter')
@freezed
class SurveyAnswers with _$SurveyAnswers {
  factory SurveyAnswers({
    @JsonKey(name: 'id') @HiveField(0) String? id,
    @JsonKey(name: 'answers') @HiveField(1) List<Answer>? answers,
  }) = _SurveyAnswers;

  factory SurveyAnswers.fromJson(Map<String, dynamic> json) =>
      _$SurveyAnswersFromJson(json);

  factory SurveyAnswers.initial() => SurveyAnswers();
}

@HiveType(typeId: 11, adapterName: 'AnswerAdapter')
@freezed
class Answer with _$Answer {
  factory Answer({
    @JsonKey(name: 'id') @HiveField(0) String? id,
    @JsonKey(name: 'question') @HiveField(1) String? question,
    @JsonKey(name: 'answer') @HiveField(2) String? answer,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  factory Answer.initial() => Answer(
        id: '',
        answer: '',
        question: '',
      );
}
