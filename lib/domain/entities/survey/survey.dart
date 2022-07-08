// Package imports:
// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'survey.freezed.dart';
part 'survey.g.dart';

@HiveType(typeId: 1, adapterName: 'SurveyAdapter')
@freezed
class Survey with _$Survey {
  factory Survey({
    @JsonKey(name: 'id') @HiveField(0) String? id,
    @JsonKey(name: 'start_question_id') @HiveField(1) String? startQuestionID,
    @JsonKey(name: 'questions') @HiveField(2) List<Question>? questions,
    @JsonKey(name: 'strings') @HiveField(3) Strings? strings,
  }) = _Survey;

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);

  factory Survey.initial() => Survey();
}

@HiveType(typeId: 2, adapterName: 'QuestionAdapter')
@freezed
class Question with _$Question {
  factory Question({
    @JsonKey(name: 'id') @HiveField(0) String? id,
    @JsonKey(name: 'question_type') @HiveField(1) String? questionType,
    @JsonKey(name: 'answer_type') @HiveField(2) String? answereType,
    @JsonKey(name: 'question_text') @HiveField(3) String? questionText,
    @JsonKey(name: 'options') @HiveField(4) List<Option>? options,
    @JsonKey(name: 'next') @HiveField(5) String? next,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  factory Question.initial() => Question();
}

@HiveType(typeId: 3, adapterName: 'OptionAdapter')
@freezed
class Option with _$Option {
  factory Option({
    @JsonKey(name: 'value') @HiveField(0) String? value,
    @JsonKey(name: 'display_text') @HiveField(1) String? displayText,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  factory Option.initial() => Option();
}

@HiveType(typeId: 4, adapterName: 'StringsAdapter')
@freezed
class Strings with _$Strings {
  factory Strings({
    @JsonKey(name: 'en') @HiveField(0) EngStrings? language,
  }) = _Strings;

  factory Strings.fromJson(Map<String, dynamic> json) =>
      _$StringsFromJson(json);

  factory Strings.initial() => Strings();
}

@HiveType(typeId: 5, adapterName: 'EngStringsAdapter')
@freezed
class EngStrings with _$EngStrings {
  factory EngStrings({
    @JsonKey(name: 'q_farmer_name') @HiveField(0) String? q_farmer_name,
    @JsonKey(name: 'q_farmer_gender') @HiveField(1) String? q_farmer_gender,
    @JsonKey(name: 'opt_male') @HiveField(2) String? opt_male,
    @JsonKey(name: 'opt_female') @HiveField(3) String? opt_female,
    @JsonKey(name: 'opt_other') @HiveField(4) String? opt_other,
    @JsonKey(name: 'q_size_of_farm') @HiveField(5) String? q_size_of_farm,
  }) = _EngStrings;

  factory EngStrings.fromJson(Map<String, dynamic> json) =>
      _$EngStringsFromJson(json);

  factory EngStrings.initial() => EngStrings();
}
