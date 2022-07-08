// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyAnswers _$SurveyAnswersFromJson(Map<String, dynamic> json) {
  return _SurveyAnswers.fromJson(json);
}

/// @nodoc
mixin _$SurveyAnswers {
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  @HiveField(1)
  List<Answer>? get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyAnswersCopyWith<SurveyAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyAnswersCopyWith<$Res> {
  factory $SurveyAnswersCopyWith(
          SurveyAnswers value, $Res Function(SurveyAnswers) then) =
      _$SurveyAnswersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'answers') @HiveField(1) List<Answer>? answers});
}

/// @nodoc
class _$SurveyAnswersCopyWithImpl<$Res>
    implements $SurveyAnswersCopyWith<$Res> {
  _$SurveyAnswersCopyWithImpl(this._value, this._then);

  final SurveyAnswers _value;
  // ignore: unused_field
  final $Res Function(SurveyAnswers) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveyAnswersCopyWith<$Res>
    implements $SurveyAnswersCopyWith<$Res> {
  factory _$$_SurveyAnswersCopyWith(
          _$_SurveyAnswers value, $Res Function(_$_SurveyAnswers) then) =
      __$$_SurveyAnswersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'answers') @HiveField(1) List<Answer>? answers});
}

/// @nodoc
class __$$_SurveyAnswersCopyWithImpl<$Res>
    extends _$SurveyAnswersCopyWithImpl<$Res>
    implements _$$_SurveyAnswersCopyWith<$Res> {
  __$$_SurveyAnswersCopyWithImpl(
      _$_SurveyAnswers _value, $Res Function(_$_SurveyAnswers) _then)
      : super(_value, (v) => _then(v as _$_SurveyAnswers));

  @override
  _$_SurveyAnswers get _value => super._value as _$_SurveyAnswers;

  @override
  $Res call({
    Object? id = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_SurveyAnswers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyAnswers implements _SurveyAnswers {
  _$_SurveyAnswers(
      {@JsonKey(name: 'id') @HiveField(0) this.id,
      @JsonKey(name: 'answers') @HiveField(1) final List<Answer>? answers})
      : _answers = answers;

  factory _$_SurveyAnswers.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyAnswersFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final String? id;
  final List<Answer>? _answers;
  @override
  @JsonKey(name: 'answers')
  @HiveField(1)
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SurveyAnswers(id: $id, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyAnswers &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyAnswersCopyWith<_$_SurveyAnswers> get copyWith =>
      __$$_SurveyAnswersCopyWithImpl<_$_SurveyAnswers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyAnswersToJson(this);
  }
}

abstract class _SurveyAnswers implements SurveyAnswers {
  factory _SurveyAnswers(
      {@JsonKey(name: 'id')
      @HiveField(0)
          final String? id,
      @JsonKey(name: 'answers')
      @HiveField(1)
          final List<Answer>? answers}) = _$_SurveyAnswers;

  factory _SurveyAnswers.fromJson(Map<String, dynamic> json) =
      _$_SurveyAnswers.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: 'answers')
  @HiveField(1)
  List<Answer>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyAnswersCopyWith<_$_SurveyAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  @HiveField(1)
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  @HiveField(2)
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'question') @HiveField(1) String? question,
      @JsonKey(name: 'answer') @HiveField(2) String? answer});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String? id,
      @JsonKey(name: 'question') @HiveField(1) String? question,
      @JsonKey(name: 'answer') @HiveField(2) String? answer});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, (v) => _then(v as _$_Answer));

  @override
  _$_Answer get _value => super._value as _$_Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  _$_Answer(
      {@JsonKey(name: 'id') @HiveField(0) this.id,
      @JsonKey(name: 'question') @HiveField(1) this.question,
      @JsonKey(name: 'answer') @HiveField(2) this.answer});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final String? id;
  @override
  @JsonKey(name: 'question')
  @HiveField(1)
  final String? question;
  @override
  @JsonKey(name: 'answer')
  @HiveField(2)
  final String? answer;

  @override
  String toString() {
    return 'Answer(id: $id, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(this);
  }
}

abstract class _Answer implements Answer {
  factory _Answer(
      {@JsonKey(name: 'id') @HiveField(0) final String? id,
      @JsonKey(name: 'question') @HiveField(1) final String? question,
      @JsonKey(name: 'answer') @HiveField(2) final String? answer}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: 'question')
  @HiveField(1)
  String? get question;
  @override
  @JsonKey(name: 'answer')
  @HiveField(2)
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}
