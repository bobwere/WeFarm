// ignore_for_file: use_build_context_synchronously, omit_local_variable_types, prefer_const_declarations, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/common/asset_constants.dart';
import 'package:wefarm/common/spacing.dart';

class QuestionTwoPage extends StatefulWidget {
  const QuestionTwoPage({super.key});

  @override
  State<QuestionTwoPage> createState() => _QuestionTwoPageState();
}

class _QuestionTwoPageState extends State<QuestionTwoPage> {
  late TextEditingController controller;
  bool isValid = false;

  @override
  void initState() {
    controller = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final surveyCubit = context.watch<SurveyCubit>();

    final questionText = surveyCubit.state.currentQuestion;

    final langMap = surveyCubit.state.survey?.strings?.language?.toJson() ?? {};

    final question = langMap[questionText] as String? ?? '';

    final index = surveyCubit.state.survey?.questions
            ?.indexWhere((q) => q.questionText == questionText) ??
        0;

    final answer = surveyCubit.state.answers?[index];

    controller.text = answer!.answer!;

    final String illustration = farmerGender;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset(
                  illustration,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: fullHorizontalPadding,
                  child: Text(
                    question,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: fullHorizontalPadding,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Colors.white,
                ),
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: double.infinity,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      items: <String>['Male', 'Female', 'Other']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                      value: answer.answer!.isEmpty ? null : answer.answer,
                      onChanged: (value) {
                        if (value!.isEmpty) {
                          setState(() {
                            isValid = false;
                          });
                        } else {
                          setState(() {
                            isValid = true;
                          });
                        }

                        surveyCubit.addOrUpdateSurveyAnswer(
                          id: questionText!,
                          index: index,
                          answer: value,
                          question: questionText,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (isValid) {
                        surveyCubit.navigateToNextOrPreviousQuestion(
                          index: index,
                          isForward: true,
                        );

                        context.read<SurveyCubit>().changePage(index: 3);
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        isValid ? Colors.indigo : Colors.grey,
                      ),
                    ),
                    child: const Text(
                      'Next Question',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
