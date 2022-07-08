// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyState _$SurveyStateFromJson(Map<String, dynamic> json) {
  return _SurveyState.fromJson(json);
}

/// @nodoc
mixin _$SurveyState {
//currentPage
  int? get index => throw _privateConstructorUsedError; //getting surveys
  bool? get loadingSurvey => throw _privateConstructorUsedError;
  String? get failureLoadingSurvey => throw _privateConstructorUsedError;
  Survey? get survey =>
      throw _privateConstructorUsedError; //posting survey answer
  bool? get submittingSurveyAnswers => throw _privateConstructorUsedError;
  String? get failedSubmittingSurveyAnswers =>
      throw _privateConstructorUsedError;
  bool? get succesfullySubmittedSurveyAnswers =>
      throw _privateConstructorUsedError;
  bool? get succesfullySubmittedSurveyAnswersToLocalStorage =>
      throw _privateConstructorUsedError;
  List<SurveyAnswers>? get surveyAnswers =>
      throw _privateConstructorUsedError; //current survey question displayed to user
  String? get currentQuestion =>
      throw _privateConstructorUsedError; //save answers enter by the user
  List<Answer>? get answers => throw _privateConstructorUsedError; //store
  int? get answersLocalStorageKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
          SurveyState value, $Res Function(SurveyState) then) =
      _$SurveyStateCopyWithImpl<$Res>;
  $Res call(
      {int? index,
      bool? loadingSurvey,
      String? failureLoadingSurvey,
      Survey? survey,
      bool? submittingSurveyAnswers,
      String? failedSubmittingSurveyAnswers,
      bool? succesfullySubmittedSurveyAnswers,
      bool? succesfullySubmittedSurveyAnswersToLocalStorage,
      List<SurveyAnswers>? surveyAnswers,
      String? currentQuestion,
      List<Answer>? answers,
      int? answersLocalStorageKey});

  $SurveyCopyWith<$Res>? get survey;
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res> implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  final SurveyState _value;
  // ignore: unused_field
  final $Res Function(SurveyState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? loadingSurvey = freezed,
    Object? failureLoadingSurvey = freezed,
    Object? survey = freezed,
    Object? submittingSurveyAnswers = freezed,
    Object? failedSubmittingSurveyAnswers = freezed,
    Object? succesfullySubmittedSurveyAnswers = freezed,
    Object? succesfullySubmittedSurveyAnswersToLocalStorage = freezed,
    Object? surveyAnswers = freezed,
    Object? currentQuestion = freezed,
    Object? answers = freezed,
    Object? answersLocalStorageKey = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingSurvey: loadingSurvey == freezed
          ? _value.loadingSurvey
          : loadingSurvey // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureLoadingSurvey: failureLoadingSurvey == freezed
          ? _value.failureLoadingSurvey
          : failureLoadingSurvey // ignore: cast_nullable_to_non_nullable
              as String?,
      survey: survey == freezed
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey?,
      submittingSurveyAnswers: submittingSurveyAnswers == freezed
          ? _value.submittingSurveyAnswers
          : submittingSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      failedSubmittingSurveyAnswers: failedSubmittingSurveyAnswers == freezed
          ? _value.failedSubmittingSurveyAnswers
          : failedSubmittingSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as String?,
      succesfullySubmittedSurveyAnswers: succesfullySubmittedSurveyAnswers ==
              freezed
          ? _value.succesfullySubmittedSurveyAnswers
          : succesfullySubmittedSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      succesfullySubmittedSurveyAnswersToLocalStorage:
          succesfullySubmittedSurveyAnswersToLocalStorage == freezed
              ? _value.succesfullySubmittedSurveyAnswersToLocalStorage
              : succesfullySubmittedSurveyAnswersToLocalStorage // ignore: cast_nullable_to_non_nullable
                  as bool?,
      surveyAnswers: surveyAnswers == freezed
          ? _value.surveyAnswers
          : surveyAnswers // ignore: cast_nullable_to_non_nullable
              as List<SurveyAnswers>?,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      answersLocalStorageKey: answersLocalStorageKey == freezed
          ? _value.answersLocalStorageKey
          : answersLocalStorageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $SurveyCopyWith<$Res>? get survey {
    if (_value.survey == null) {
      return null;
    }

    return $SurveyCopyWith<$Res>(_value.survey!, (value) {
      return _then(_value.copyWith(survey: value));
    });
  }
}

/// @nodoc
abstract class _$$_SurveyStateCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$$_SurveyStateCopyWith(
          _$_SurveyState value, $Res Function(_$_SurveyState) then) =
      __$$_SurveyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? index,
      bool? loadingSurvey,
      String? failureLoadingSurvey,
      Survey? survey,
      bool? submittingSurveyAnswers,
      String? failedSubmittingSurveyAnswers,
      bool? succesfullySubmittedSurveyAnswers,
      bool? succesfullySubmittedSurveyAnswersToLocalStorage,
      List<SurveyAnswers>? surveyAnswers,
      String? currentQuestion,
      List<Answer>? answers,
      int? answersLocalStorageKey});

  @override
  $SurveyCopyWith<$Res>? get survey;
}

/// @nodoc
class __$$_SurveyStateCopyWithImpl<$Res> extends _$SurveyStateCopyWithImpl<$Res>
    implements _$$_SurveyStateCopyWith<$Res> {
  __$$_SurveyStateCopyWithImpl(
      _$_SurveyState _value, $Res Function(_$_SurveyState) _then)
      : super(_value, (v) => _then(v as _$_SurveyState));

  @override
  _$_SurveyState get _value => super._value as _$_SurveyState;

  @override
  $Res call({
    Object? index = freezed,
    Object? loadingSurvey = freezed,
    Object? failureLoadingSurvey = freezed,
    Object? survey = freezed,
    Object? submittingSurveyAnswers = freezed,
    Object? failedSubmittingSurveyAnswers = freezed,
    Object? succesfullySubmittedSurveyAnswers = freezed,
    Object? succesfullySubmittedSurveyAnswersToLocalStorage = freezed,
    Object? surveyAnswers = freezed,
    Object? currentQuestion = freezed,
    Object? answers = freezed,
    Object? answersLocalStorageKey = freezed,
  }) {
    return _then(_$_SurveyState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingSurvey: loadingSurvey == freezed
          ? _value.loadingSurvey
          : loadingSurvey // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureLoadingSurvey: failureLoadingSurvey == freezed
          ? _value.failureLoadingSurvey
          : failureLoadingSurvey // ignore: cast_nullable_to_non_nullable
              as String?,
      survey: survey == freezed
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey?,
      submittingSurveyAnswers: submittingSurveyAnswers == freezed
          ? _value.submittingSurveyAnswers
          : submittingSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      failedSubmittingSurveyAnswers: failedSubmittingSurveyAnswers == freezed
          ? _value.failedSubmittingSurveyAnswers
          : failedSubmittingSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as String?,
      succesfullySubmittedSurveyAnswers: succesfullySubmittedSurveyAnswers ==
              freezed
          ? _value.succesfullySubmittedSurveyAnswers
          : succesfullySubmittedSurveyAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      succesfullySubmittedSurveyAnswersToLocalStorage:
          succesfullySubmittedSurveyAnswersToLocalStorage == freezed
              ? _value.succesfullySubmittedSurveyAnswersToLocalStorage
              : succesfullySubmittedSurveyAnswersToLocalStorage // ignore: cast_nullable_to_non_nullable
                  as bool?,
      surveyAnswers: surveyAnswers == freezed
          ? _value._surveyAnswers
          : surveyAnswers // ignore: cast_nullable_to_non_nullable
              as List<SurveyAnswers>?,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      answersLocalStorageKey: answersLocalStorageKey == freezed
          ? _value.answersLocalStorageKey
          : answersLocalStorageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyState implements _SurveyState {
  _$_SurveyState(
      {this.index,
      this.loadingSurvey,
      this.failureLoadingSurvey,
      this.survey,
      this.submittingSurveyAnswers,
      this.failedSubmittingSurveyAnswers,
      this.succesfullySubmittedSurveyAnswers,
      this.succesfullySubmittedSurveyAnswersToLocalStorage,
      final List<SurveyAnswers>? surveyAnswers,
      this.currentQuestion,
      final List<Answer>? answers,
      this.answersLocalStorageKey})
      : _surveyAnswers = surveyAnswers,
        _answers = answers;

  factory _$_SurveyState.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyStateFromJson(json);

//currentPage
  @override
  final int? index;
//getting surveys
  @override
  final bool? loadingSurvey;
  @override
  final String? failureLoadingSurvey;
  @override
  final Survey? survey;
//posting survey answer
  @override
  final bool? submittingSurveyAnswers;
  @override
  final String? failedSubmittingSurveyAnswers;
  @override
  final bool? succesfullySubmittedSurveyAnswers;
  @override
  final bool? succesfullySubmittedSurveyAnswersToLocalStorage;
  final List<SurveyAnswers>? _surveyAnswers;
  @override
  List<SurveyAnswers>? get surveyAnswers {
    final value = _surveyAnswers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//current survey question displayed to user
  @override
  final String? currentQuestion;
//save answers enter by the user
  final List<Answer>? _answers;
//save answers enter by the user
  @override
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//store
  @override
  final int? answersLocalStorageKey;

  @override
  String toString() {
    return 'SurveyState(index: $index, loadingSurvey: $loadingSurvey, failureLoadingSurvey: $failureLoadingSurvey, survey: $survey, submittingSurveyAnswers: $submittingSurveyAnswers, failedSubmittingSurveyAnswers: $failedSubmittingSurveyAnswers, succesfullySubmittedSurveyAnswers: $succesfullySubmittedSurveyAnswers, succesfullySubmittedSurveyAnswersToLocalStorage: $succesfullySubmittedSurveyAnswersToLocalStorage, surveyAnswers: $surveyAnswers, currentQuestion: $currentQuestion, answers: $answers, answersLocalStorageKey: $answersLocalStorageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyState &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.loadingSurvey, loadingSurvey) &&
            const DeepCollectionEquality()
                .equals(other.failureLoadingSurvey, failureLoadingSurvey) &&
            const DeepCollectionEquality().equals(other.survey, survey) &&
            const DeepCollectionEquality().equals(
                other.submittingSurveyAnswers, submittingSurveyAnswers) &&
            const DeepCollectionEquality().equals(
                other.failedSubmittingSurveyAnswers,
                failedSubmittingSurveyAnswers) &&
            const DeepCollectionEquality().equals(
                other.succesfullySubmittedSurveyAnswers,
                succesfullySubmittedSurveyAnswers) &&
            const DeepCollectionEquality().equals(
                other.succesfullySubmittedSurveyAnswersToLocalStorage,
                succesfullySubmittedSurveyAnswersToLocalStorage) &&
            const DeepCollectionEquality()
                .equals(other._surveyAnswers, _surveyAnswers) &&
            const DeepCollectionEquality()
                .equals(other.currentQuestion, currentQuestion) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other.answersLocalStorageKey, answersLocalStorageKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(loadingSurvey),
      const DeepCollectionEquality().hash(failureLoadingSurvey),
      const DeepCollectionEquality().hash(survey),
      const DeepCollectionEquality().hash(submittingSurveyAnswers),
      const DeepCollectionEquality().hash(failedSubmittingSurveyAnswers),
      const DeepCollectionEquality().hash(succesfullySubmittedSurveyAnswers),
      const DeepCollectionEquality()
          .hash(succesfullySubmittedSurveyAnswersToLocalStorage),
      const DeepCollectionEquality().hash(_surveyAnswers),
      const DeepCollectionEquality().hash(currentQuestion),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(answersLocalStorageKey));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyStateCopyWith<_$_SurveyState> get copyWith =>
      __$$_SurveyStateCopyWithImpl<_$_SurveyState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyStateToJson(this);
  }
}

abstract class _SurveyState implements SurveyState {
  factory _SurveyState(
      {final int? index,
      final bool? loadingSurvey,
      final String? failureLoadingSurvey,
      final Survey? survey,
      final bool? submittingSurveyAnswers,
      final String? failedSubmittingSurveyAnswers,
      final bool? succesfullySubmittedSurveyAnswers,
      final bool? succesfullySubmittedSurveyAnswersToLocalStorage,
      final List<SurveyAnswers>? surveyAnswers,
      final String? currentQuestion,
      final List<Answer>? answers,
      final int? answersLocalStorageKey}) = _$_SurveyState;

  factory _SurveyState.fromJson(Map<String, dynamic> json) =
      _$_SurveyState.fromJson;

  @override //currentPage
  int? get index;
  @override //getting surveys
  bool? get loadingSurvey;
  @override
  String? get failureLoadingSurvey;
  @override
  Survey? get survey;
  @override //posting survey answer
  bool? get submittingSurveyAnswers;
  @override
  String? get failedSubmittingSurveyAnswers;
  @override
  bool? get succesfullySubmittedSurveyAnswers;
  @override
  bool? get succesfullySubmittedSurveyAnswersToLocalStorage;
  @override
  List<SurveyAnswers>? get surveyAnswers;
  @override //current survey question displayed to user
  String? get currentQuestion;
  @override //save answers enter by the user
  List<Answer>? get answers;
  @override //store
  int? get answersLocalStorageKey;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyStateCopyWith<_$_SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}
