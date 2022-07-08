// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_question_id')
  @HiveField(1)
  String? get startQuestionID => throw _privateConstructorUsedError;
  @JsonKey(name: 'questions')
  @HiveField(2)
  List<Question>? get questions => throw _privateConstructorUsedError;
  @JsonKey(name: 'strings')
  @HiveField(3)
  Strings? get strings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'start_question_id') @HiveField(1) String? startQuestionID,
      @JsonKey(name: 'questions') @HiveField(2) List<Question>? questions,
      @JsonKey(name: 'strings') @HiveField(3) Strings? strings});

  $StringsCopyWith<$Res>? get strings;
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res> implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  final Survey _value;
  // ignore: unused_field
  final $Res Function(Survey) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startQuestionID = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startQuestionID: startQuestionID == freezed
          ? _value.startQuestionID
          : startQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      strings: strings == freezed
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Strings?,
    ));
  }

  @override
  $StringsCopyWith<$Res>? get strings {
    if (_value.strings == null) {
      return null;
    }

    return $StringsCopyWith<$Res>(_value.strings!, (value) {
      return _then(_value.copyWith(strings: value));
    });
  }
}

/// @nodoc
abstract class _$$_SurveyCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$_SurveyCopyWith(_$_Survey value, $Res Function(_$_Survey) then) =
      __$$_SurveyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'start_question_id') @HiveField(1) String? startQuestionID,
      @JsonKey(name: 'questions') @HiveField(2) List<Question>? questions,
      @JsonKey(name: 'strings') @HiveField(3) Strings? strings});

  @override
  $StringsCopyWith<$Res>? get strings;
}

/// @nodoc
class __$$_SurveyCopyWithImpl<$Res> extends _$SurveyCopyWithImpl<$Res>
    implements _$$_SurveyCopyWith<$Res> {
  __$$_SurveyCopyWithImpl(_$_Survey _value, $Res Function(_$_Survey) _then)
      : super(_value, (v) => _then(v as _$_Survey));

  @override
  _$_Survey get _value => super._value as _$_Survey;

  @override
  $Res call({
    Object? id = freezed,
    Object? startQuestionID = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_$_Survey(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startQuestionID: startQuestionID == freezed
          ? _value.startQuestionID
          : startQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      strings: strings == freezed
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Strings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Survey implements _Survey {
  _$_Survey(
      {@JsonKey(name: 'id') @HiveField(0) this.id,
      @JsonKey(name: 'start_question_id') @HiveField(1) this.startQuestionID,
      @JsonKey(name: 'questions') @HiveField(2) final List<Question>? questions,
      @JsonKey(name: 'strings') @HiveField(3) this.strings})
      : _questions = questions;

  factory _$_Survey.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final String? id;
  @override
  @JsonKey(name: 'start_question_id')
  @HiveField(1)
  final String? startQuestionID;
  final List<Question>? _questions;
  @override
  @JsonKey(name: 'questions')
  @HiveField(2)
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'strings')
  @HiveField(3)
  final Strings? strings;

  @override
  String toString() {
    return 'Survey(id: $id, startQuestionID: $startQuestionID, questions: $questions, strings: $strings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Survey &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.startQuestionID, startQuestionID) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other.strings, strings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startQuestionID),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(strings));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      __$$_SurveyCopyWithImpl<_$_Survey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyToJson(this);
  }
}

abstract class _Survey implements Survey {
  factory _Survey(
      {@JsonKey(name: 'id')
      @HiveField(0)
          final String? id,
      @JsonKey(name: 'start_question_id')
      @HiveField(1)
          final String? startQuestionID,
      @JsonKey(name: 'questions')
      @HiveField(2)
          final List<Question>? questions,
      @JsonKey(name: 'strings')
      @HiveField(3)
          final Strings? strings}) = _$_Survey;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$_Survey.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: 'start_question_id')
  @HiveField(1)
  String? get startQuestionID;
  @override
  @JsonKey(name: 'questions')
  @HiveField(2)
  List<Question>? get questions;
  @override
  @JsonKey(name: 'strings')
  @HiveField(3)
  Strings? get strings;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  @HiveField(1)
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_type')
  @HiveField(2)
  String? get answereType => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_text')
  @HiveField(3)
  String? get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  @HiveField(4)
  List<Option>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  @HiveField(5)
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'question_type') @HiveField(1) String? questionType,
      @JsonKey(name: 'answer_type') @HiveField(2) String? answereType,
      @JsonKey(name: 'question_text') @HiveField(3) String? questionText,
      @JsonKey(name: 'options') @HiveField(4) List<Option>? options,
      @JsonKey(name: 'next') @HiveField(5) String? next});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? answereType = freezed,
    Object? questionText = freezed,
    Object? options = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answereType: answereType == freezed
          ? _value.answereType
          : answereType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'question_type') @HiveField(1) String? questionType,
      @JsonKey(name: 'answer_type') @HiveField(2) String? answereType,
      @JsonKey(name: 'question_text') @HiveField(3) String? questionText,
      @JsonKey(name: 'options') @HiveField(4) List<Option>? options,
      @JsonKey(name: 'next') @HiveField(5) String? next});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? answereType = freezed,
    Object? questionText = freezed,
    Object? options = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answereType: answereType == freezed
          ? _value.answereType
          : answereType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  _$_Question(
      {@JsonKey(name: 'id') @HiveField(0) this.id,
      @JsonKey(name: 'question_type') @HiveField(1) this.questionType,
      @JsonKey(name: 'answer_type') @HiveField(2) this.answereType,
      @JsonKey(name: 'question_text') @HiveField(3) this.questionText,
      @JsonKey(name: 'options') @HiveField(4) final List<Option>? options,
      @JsonKey(name: 'next') @HiveField(5) this.next})
      : _options = options;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final String? id;
  @override
  @JsonKey(name: 'question_type')
  @HiveField(1)
  final String? questionType;
  @override
  @JsonKey(name: 'answer_type')
  @HiveField(2)
  final String? answereType;
  @override
  @JsonKey(name: 'question_text')
  @HiveField(3)
  final String? questionText;
  final List<Option>? _options;
  @override
  @JsonKey(name: 'options')
  @HiveField(4)
  List<Option>? get options {
    final value = _options;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next')
  @HiveField(5)
  final String? next;

  @override
  String toString() {
    return 'Question(id: $id, questionType: $questionType, answereType: $answereType, questionText: $questionText, options: $options, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.questionType, questionType) &&
            const DeepCollectionEquality()
                .equals(other.answereType, answereType) &&
            const DeepCollectionEquality()
                .equals(other.questionText, questionText) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(questionType),
      const DeepCollectionEquality().hash(answereType),
      const DeepCollectionEquality().hash(questionText),
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  factory _Question(
      {@JsonKey(name: 'id') @HiveField(0) final String? id,
      @JsonKey(name: 'question_type') @HiveField(1) final String? questionType,
      @JsonKey(name: 'answer_type') @HiveField(2) final String? answereType,
      @JsonKey(name: 'question_text') @HiveField(3) final String? questionText,
      @JsonKey(name: 'options') @HiveField(4) final List<Option>? options,
      @JsonKey(name: 'next') @HiveField(5) final String? next}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: 'question_type')
  @HiveField(1)
  String? get questionType;
  @override
  @JsonKey(name: 'answer_type')
  @HiveField(2)
  String? get answereType;
  @override
  @JsonKey(name: 'question_text')
  @HiveField(3)
  String? get questionText;
  @override
  @JsonKey(name: 'options')
  @HiveField(4)
  List<Option>? get options;
  @override
  @JsonKey(name: 'next')
  @HiveField(5)
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  @JsonKey(name: 'value')
  @HiveField(0)
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_text')
  @HiveField(1)
  String? get displayText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') @HiveField(0) String? value,
      @JsonKey(name: 'display_text') @HiveField(1) String? displayText});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res> implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  final Option _value;
  // ignore: unused_field
  final $Res Function(Option) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? displayText = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$_OptionCopyWith(_$_Option value, $Res Function(_$_Option) then) =
      __$$_OptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') @HiveField(0) String? value,
      @JsonKey(name: 'display_text') @HiveField(1) String? displayText});
}

/// @nodoc
class __$$_OptionCopyWithImpl<$Res> extends _$OptionCopyWithImpl<$Res>
    implements _$$_OptionCopyWith<$Res> {
  __$$_OptionCopyWithImpl(_$_Option _value, $Res Function(_$_Option) _then)
      : super(_value, (v) => _then(v as _$_Option));

  @override
  _$_Option get _value => super._value as _$_Option;

  @override
  $Res call({
    Object? value = freezed,
    Object? displayText = freezed,
  }) {
    return _then(_$_Option(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Option implements _Option {
  _$_Option(
      {@JsonKey(name: 'value') @HiveField(0) this.value,
      @JsonKey(name: 'display_text') @HiveField(1) this.displayText});

  factory _$_Option.fromJson(Map<String, dynamic> json) =>
      _$$_OptionFromJson(json);

  @override
  @JsonKey(name: 'value')
  @HiveField(0)
  final String? value;
  @override
  @JsonKey(name: 'display_text')
  @HiveField(1)
  final String? displayText;

  @override
  String toString() {
    return 'Option(value: $value, displayText: $displayText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Option &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.displayText, displayText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(displayText));

  @JsonKey(ignore: true)
  @override
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      __$$_OptionCopyWithImpl<_$_Option>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionToJson(this);
  }
}

abstract class _Option implements Option {
  factory _Option(
      {@JsonKey(name: 'value')
      @HiveField(0)
          final String? value,
      @JsonKey(name: 'display_text')
      @HiveField(1)
          final String? displayText}) = _$_Option;

  factory _Option.fromJson(Map<String, dynamic> json) = _$_Option.fromJson;

  @override
  @JsonKey(name: 'value')
  @HiveField(0)
  String? get value;
  @override
  @JsonKey(name: 'display_text')
  @HiveField(1)
  String? get displayText;
  @override
  @JsonKey(ignore: true)
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      throw _privateConstructorUsedError;
}

Strings _$StringsFromJson(Map<String, dynamic> json) {
  return _Strings.fromJson(json);
}

/// @nodoc
mixin _$Strings {
  @JsonKey(name: 'en')
  @HiveField(0)
  EngStrings? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringsCopyWith<Strings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringsCopyWith<$Res> {
  factory $StringsCopyWith(Strings value, $Res Function(Strings) then) =
      _$StringsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'en') @HiveField(0) EngStrings? language});

  $EngStringsCopyWith<$Res>? get language;
}

/// @nodoc
class _$StringsCopyWithImpl<$Res> implements $StringsCopyWith<$Res> {
  _$StringsCopyWithImpl(this._value, this._then);

  final Strings _value;
  // ignore: unused_field
  final $Res Function(Strings) _then;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as EngStrings?,
    ));
  }

  @override
  $EngStringsCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $EngStringsCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$$_StringsCopyWith<$Res> implements $StringsCopyWith<$Res> {
  factory _$$_StringsCopyWith(
          _$_Strings value, $Res Function(_$_Strings) then) =
      __$$_StringsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'en') @HiveField(0) EngStrings? language});

  @override
  $EngStringsCopyWith<$Res>? get language;
}

/// @nodoc
class __$$_StringsCopyWithImpl<$Res> extends _$StringsCopyWithImpl<$Res>
    implements _$$_StringsCopyWith<$Res> {
  __$$_StringsCopyWithImpl(_$_Strings _value, $Res Function(_$_Strings) _then)
      : super(_value, (v) => _then(v as _$_Strings));

  @override
  _$_Strings get _value => super._value as _$_Strings;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(_$_Strings(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as EngStrings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Strings implements _Strings {
  _$_Strings({@JsonKey(name: 'en') @HiveField(0) this.language});

  factory _$_Strings.fromJson(Map<String, dynamic> json) =>
      _$$_StringsFromJson(json);

  @override
  @JsonKey(name: 'en')
  @HiveField(0)
  final EngStrings? language;

  @override
  String toString() {
    return 'Strings(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Strings &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$$_StringsCopyWith<_$_Strings> get copyWith =>
      __$$_StringsCopyWithImpl<_$_Strings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StringsToJson(this);
  }
}

abstract class _Strings implements Strings {
  factory _Strings(
          {@JsonKey(name: 'en') @HiveField(0) final EngStrings? language}) =
      _$_Strings;

  factory _Strings.fromJson(Map<String, dynamic> json) = _$_Strings.fromJson;

  @override
  @JsonKey(name: 'en')
  @HiveField(0)
  EngStrings? get language;
  @override
  @JsonKey(ignore: true)
  _$$_StringsCopyWith<_$_Strings> get copyWith =>
      throw _privateConstructorUsedError;
}

EngStrings _$EngStringsFromJson(Map<String, dynamic> json) {
  return _EngStrings.fromJson(json);
}

/// @nodoc
mixin _$EngStrings {
  @JsonKey(name: 'q_farmer_name')
  @HiveField(0)
  String? get q_farmer_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'q_farmer_gender')
  @HiveField(1)
  String? get q_farmer_gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'opt_male')
  @HiveField(2)
  String? get opt_male => throw _privateConstructorUsedError;
  @JsonKey(name: 'opt_female')
  @HiveField(3)
  String? get opt_female => throw _privateConstructorUsedError;
  @JsonKey(name: 'opt_other')
  @HiveField(4)
  String? get opt_other => throw _privateConstructorUsedError;
  @JsonKey(name: 'q_size_of_farm')
  @HiveField(5)
  String? get q_size_of_farm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngStringsCopyWith<EngStrings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngStringsCopyWith<$Res> {
  factory $EngStringsCopyWith(
          EngStrings value, $Res Function(EngStrings) then) =
      _$EngStringsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'q_farmer_name') @HiveField(0) String? q_farmer_name,
      @JsonKey(name: 'q_farmer_gender') @HiveField(1) String? q_farmer_gender,
      @JsonKey(name: 'opt_male') @HiveField(2) String? opt_male,
      @JsonKey(name: 'opt_female') @HiveField(3) String? opt_female,
      @JsonKey(name: 'opt_other') @HiveField(4) String? opt_other,
      @JsonKey(name: 'q_size_of_farm') @HiveField(5) String? q_size_of_farm});
}

/// @nodoc
class _$EngStringsCopyWithImpl<$Res> implements $EngStringsCopyWith<$Res> {
  _$EngStringsCopyWithImpl(this._value, this._then);

  final EngStrings _value;
  // ignore: unused_field
  final $Res Function(EngStrings) _then;

  @override
  $Res call({
    Object? q_farmer_name = freezed,
    Object? q_farmer_gender = freezed,
    Object? opt_male = freezed,
    Object? opt_female = freezed,
    Object? opt_other = freezed,
    Object? q_size_of_farm = freezed,
  }) {
    return _then(_value.copyWith(
      q_farmer_name: q_farmer_name == freezed
          ? _value.q_farmer_name
          : q_farmer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      q_farmer_gender: q_farmer_gender == freezed
          ? _value.q_farmer_gender
          : q_farmer_gender // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_male: opt_male == freezed
          ? _value.opt_male
          : opt_male // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_female: opt_female == freezed
          ? _value.opt_female
          : opt_female // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_other: opt_other == freezed
          ? _value.opt_other
          : opt_other // ignore: cast_nullable_to_non_nullable
              as String?,
      q_size_of_farm: q_size_of_farm == freezed
          ? _value.q_size_of_farm
          : q_size_of_farm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EngStringsCopyWith<$Res>
    implements $EngStringsCopyWith<$Res> {
  factory _$$_EngStringsCopyWith(
          _$_EngStrings value, $Res Function(_$_EngStrings) then) =
      __$$_EngStringsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'q_farmer_name') @HiveField(0) String? q_farmer_name,
      @JsonKey(name: 'q_farmer_gender') @HiveField(1) String? q_farmer_gender,
      @JsonKey(name: 'opt_male') @HiveField(2) String? opt_male,
      @JsonKey(name: 'opt_female') @HiveField(3) String? opt_female,
      @JsonKey(name: 'opt_other') @HiveField(4) String? opt_other,
      @JsonKey(name: 'q_size_of_farm') @HiveField(5) String? q_size_of_farm});
}

/// @nodoc
class __$$_EngStringsCopyWithImpl<$Res> extends _$EngStringsCopyWithImpl<$Res>
    implements _$$_EngStringsCopyWith<$Res> {
  __$$_EngStringsCopyWithImpl(
      _$_EngStrings _value, $Res Function(_$_EngStrings) _then)
      : super(_value, (v) => _then(v as _$_EngStrings));

  @override
  _$_EngStrings get _value => super._value as _$_EngStrings;

  @override
  $Res call({
    Object? q_farmer_name = freezed,
    Object? q_farmer_gender = freezed,
    Object? opt_male = freezed,
    Object? opt_female = freezed,
    Object? opt_other = freezed,
    Object? q_size_of_farm = freezed,
  }) {
    return _then(_$_EngStrings(
      q_farmer_name: q_farmer_name == freezed
          ? _value.q_farmer_name
          : q_farmer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      q_farmer_gender: q_farmer_gender == freezed
          ? _value.q_farmer_gender
          : q_farmer_gender // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_male: opt_male == freezed
          ? _value.opt_male
          : opt_male // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_female: opt_female == freezed
          ? _value.opt_female
          : opt_female // ignore: cast_nullable_to_non_nullable
              as String?,
      opt_other: opt_other == freezed
          ? _value.opt_other
          : opt_other // ignore: cast_nullable_to_non_nullable
              as String?,
      q_size_of_farm: q_size_of_farm == freezed
          ? _value.q_size_of_farm
          : q_size_of_farm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EngStrings implements _EngStrings {
  _$_EngStrings(
      {@JsonKey(name: 'q_farmer_name') @HiveField(0) this.q_farmer_name,
      @JsonKey(name: 'q_farmer_gender') @HiveField(1) this.q_farmer_gender,
      @JsonKey(name: 'opt_male') @HiveField(2) this.opt_male,
      @JsonKey(name: 'opt_female') @HiveField(3) this.opt_female,
      @JsonKey(name: 'opt_other') @HiveField(4) this.opt_other,
      @JsonKey(name: 'q_size_of_farm') @HiveField(5) this.q_size_of_farm});

  factory _$_EngStrings.fromJson(Map<String, dynamic> json) =>
      _$$_EngStringsFromJson(json);

  @override
  @JsonKey(name: 'q_farmer_name')
  @HiveField(0)
  final String? q_farmer_name;
  @override
  @JsonKey(name: 'q_farmer_gender')
  @HiveField(1)
  final String? q_farmer_gender;
  @override
  @JsonKey(name: 'opt_male')
  @HiveField(2)
  final String? opt_male;
  @override
  @JsonKey(name: 'opt_female')
  @HiveField(3)
  final String? opt_female;
  @override
  @JsonKey(name: 'opt_other')
  @HiveField(4)
  final String? opt_other;
  @override
  @JsonKey(name: 'q_size_of_farm')
  @HiveField(5)
  final String? q_size_of_farm;

  @override
  String toString() {
    return 'EngStrings(q_farmer_name: $q_farmer_name, q_farmer_gender: $q_farmer_gender, opt_male: $opt_male, opt_female: $opt_female, opt_other: $opt_other, q_size_of_farm: $q_size_of_farm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EngStrings &&
            const DeepCollectionEquality()
                .equals(other.q_farmer_name, q_farmer_name) &&
            const DeepCollectionEquality()
                .equals(other.q_farmer_gender, q_farmer_gender) &&
            const DeepCollectionEquality().equals(other.opt_male, opt_male) &&
            const DeepCollectionEquality()
                .equals(other.opt_female, opt_female) &&
            const DeepCollectionEquality().equals(other.opt_other, opt_other) &&
            const DeepCollectionEquality()
                .equals(other.q_size_of_farm, q_size_of_farm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(q_farmer_name),
      const DeepCollectionEquality().hash(q_farmer_gender),
      const DeepCollectionEquality().hash(opt_male),
      const DeepCollectionEquality().hash(opt_female),
      const DeepCollectionEquality().hash(opt_other),
      const DeepCollectionEquality().hash(q_size_of_farm));

  @JsonKey(ignore: true)
  @override
  _$$_EngStringsCopyWith<_$_EngStrings> get copyWith =>
      __$$_EngStringsCopyWithImpl<_$_EngStrings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngStringsToJson(this);
  }
}

abstract class _EngStrings implements EngStrings {
  factory _EngStrings(
      {@JsonKey(name: 'q_farmer_name')
      @HiveField(0)
          final String? q_farmer_name,
      @JsonKey(name: 'q_farmer_gender')
      @HiveField(1)
          final String? q_farmer_gender,
      @JsonKey(name: 'opt_male')
      @HiveField(2)
          final String? opt_male,
      @JsonKey(name: 'opt_female')
      @HiveField(3)
          final String? opt_female,
      @JsonKey(name: 'opt_other')
      @HiveField(4)
          final String? opt_other,
      @JsonKey(name: 'q_size_of_farm')
      @HiveField(5)
          final String? q_size_of_farm}) = _$_EngStrings;

  factory _EngStrings.fromJson(Map<String, dynamic> json) =
      _$_EngStrings.fromJson;

  @override
  @JsonKey(name: 'q_farmer_name')
  @HiveField(0)
  String? get q_farmer_name;
  @override
  @JsonKey(name: 'q_farmer_gender')
  @HiveField(1)
  String? get q_farmer_gender;
  @override
  @JsonKey(name: 'opt_male')
  @HiveField(2)
  String? get opt_male;
  @override
  @JsonKey(name: 'opt_female')
  @HiveField(3)
  String? get opt_female;
  @override
  @JsonKey(name: 'opt_other')
  @HiveField(4)
  String? get opt_other;
  @override
  @JsonKey(name: 'q_size_of_farm')
  @HiveField(5)
  String? get q_size_of_farm;
  @override
  @JsonKey(ignore: true)
  _$$_EngStringsCopyWith<_$_EngStrings> get copyWith =>
      throw _privateConstructorUsedError;
}
