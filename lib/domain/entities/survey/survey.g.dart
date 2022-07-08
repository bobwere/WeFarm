// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyAdapter extends TypeAdapter<Survey> {
  @override
  final int typeId = 1;

  @override
  Survey read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Survey(
      id: fields[0] as String?,
      startQuestionID: fields[1] as String?,
      questions: (fields[2] as List?)?.cast<Question>(),
      strings: fields[3] as Strings?,
    );
  }

  @override
  void write(BinaryWriter writer, Survey obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startQuestionID)
      ..writeByte(2)
      ..write(obj.questions)
      ..writeByte(3)
      ..write(obj.strings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuestionAdapter extends TypeAdapter<Question> {
  @override
  final int typeId = 2;

  @override
  Question read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Question(
      id: fields[0] as String?,
      questionType: fields[1] as String?,
      answereType: fields[2] as String?,
      questionText: fields[3] as String?,
      options: (fields[4] as List?)?.cast<Option>(),
      next: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Question obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.questionType)
      ..writeByte(2)
      ..write(obj.answereType)
      ..writeByte(3)
      ..write(obj.questionText)
      ..writeByte(4)
      ..write(obj.options)
      ..writeByte(5)
      ..write(obj.next);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OptionAdapter extends TypeAdapter<Option> {
  @override
  final int typeId = 3;

  @override
  Option read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Option(
      value: fields[0] as String?,
      displayText: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Option obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.displayText);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StringsAdapter extends TypeAdapter<Strings> {
  @override
  final int typeId = 4;

  @override
  Strings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Strings(
      language: fields[0] as EngStrings?,
    );
  }

  @override
  void write(BinaryWriter writer, Strings obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EngStringsAdapter extends TypeAdapter<EngStrings> {
  @override
  final int typeId = 5;

  @override
  EngStrings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EngStrings(
      q_farmer_name: fields[0] as String?,
      q_farmer_gender: fields[1] as String?,
      opt_male: fields[2] as String?,
      opt_female: fields[3] as String?,
      opt_other: fields[4] as String?,
      q_size_of_farm: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EngStrings obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.q_farmer_name)
      ..writeByte(1)
      ..write(obj.q_farmer_gender)
      ..writeByte(2)
      ..write(obj.opt_male)
      ..writeByte(3)
      ..write(obj.opt_female)
      ..writeByte(4)
      ..write(obj.opt_other)
      ..writeByte(5)
      ..write(obj.q_size_of_farm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EngStringsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Survey _$$_SurveyFromJson(Map<String, dynamic> json) => _$_Survey(
      id: json['id'] as String?,
      startQuestionID: json['start_question_id'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      strings: json['strings'] == null
          ? null
          : Strings.fromJson(json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SurveyToJson(_$_Survey instance) => <String, dynamic>{
      'id': instance.id,
      'start_question_id': instance.startQuestionID,
      'questions': instance.questions,
      'strings': instance.strings,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String?,
      questionType: json['question_type'] as String?,
      answereType: json['answer_type'] as String?,
      questionText: json['question_text'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_type': instance.questionType,
      'answer_type': instance.answereType,
      'question_text': instance.questionText,
      'options': instance.options,
      'next': instance.next,
    };

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      value: json['value'] as String?,
      displayText: json['display_text'] as String?,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'value': instance.value,
      'display_text': instance.displayText,
    };

_$_Strings _$$_StringsFromJson(Map<String, dynamic> json) => _$_Strings(
      language: json['en'] == null
          ? null
          : EngStrings.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StringsToJson(_$_Strings instance) =>
    <String, dynamic>{
      'en': instance.language,
    };

_$_EngStrings _$$_EngStringsFromJson(Map<String, dynamic> json) =>
    _$_EngStrings(
      q_farmer_name: json['q_farmer_name'] as String?,
      q_farmer_gender: json['q_farmer_gender'] as String?,
      opt_male: json['opt_male'] as String?,
      opt_female: json['opt_female'] as String?,
      opt_other: json['opt_other'] as String?,
      q_size_of_farm: json['q_size_of_farm'] as String?,
    );

Map<String, dynamic> _$$_EngStringsToJson(_$_EngStrings instance) =>
    <String, dynamic>{
      'q_farmer_name': instance.q_farmer_name,
      'q_farmer_gender': instance.q_farmer_gender,
      'opt_male': instance.opt_male,
      'opt_female': instance.opt_female,
      'opt_other': instance.opt_other,
      'q_size_of_farm': instance.q_size_of_farm,
    };
