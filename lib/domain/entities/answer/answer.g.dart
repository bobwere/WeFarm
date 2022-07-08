// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyAnswersAdapter extends TypeAdapter<SurveyAnswers> {
  @override
  final int typeId = 10;

  @override
  SurveyAnswers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyAnswers(
      id: fields[0] as String?,
      answers: (fields[1] as List?)?.cast<Answer>(),
    );
  }

  @override
  void write(BinaryWriter writer, SurveyAnswers obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.answers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAnswersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AnswerAdapter extends TypeAdapter<Answer> {
  @override
  final int typeId = 11;

  @override
  Answer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Answer(
      id: fields[0] as String?,
      question: fields[1] as String?,
      answer: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Answer obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyAnswers _$$_SurveyAnswersFromJson(Map<String, dynamic> json) =>
    _$_SurveyAnswers(
      id: json['id'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyAnswersToJson(_$_SurveyAnswers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answers': instance.answers,
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as String?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };
