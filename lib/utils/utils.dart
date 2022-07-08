import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wefarm/common/endpoints.dart';
import 'package:wefarm/domain/entities/answer/answer.dart';
import 'package:wefarm/domain/entities/survey/survey.dart';

Future<Survey> getSurvey() async {
  final response = await http.get(Uri.parse(fetchSurveyEndpoint));

  if (response.statusCode == 200) {
    return Survey.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load survey');
  }
}

Future<void> postSurvey({required Answer answer}) async {
  final response = await http.post(
    Uri.parse(postSurveyEndpoint),
    body: jsonEncode(
      answer.toJson(),
    ),
  );

  if (response.statusCode == 201) {
    return;
  } else {
    throw Exception('Failed to submit survey');
  }
}
