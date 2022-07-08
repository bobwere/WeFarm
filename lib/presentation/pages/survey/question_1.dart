// ignore_for_file: use_build_context_synchronously, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/common/asset_constants.dart';
import 'package:wefarm/common/spacing.dart';

class QuestionOnePage extends StatefulWidget {
  const QuestionOnePage({super.key});

  @override
  State<QuestionOnePage> createState() => _QuestionOnePageState();
}

class _QuestionOnePageState extends State<QuestionOnePage> {
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    final surveyCubit = context.watch<SurveyCubit>();

    final questionText = surveyCubit.state.currentQuestion;

    final langMap = surveyCubit.state.survey?.strings?.language?.toJson() ?? {};

    final question = langMap[questionText] as String? ?? '';

    final index = surveyCubit.state.survey?.questions
            ?.indexWhere((q) => q.questionText == questionText) ??
        0;

    final illustration = farmerName;

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
                alignment: Alignment.center,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.indigo,
                  //controller: controller,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        isValid = true;
                      });
                    } else {
                      setState(() {
                        isValid = false;
                      });
                    }

                    surveyCubit.addOrUpdateSurveyAnswer(
                      id: questionText!,
                      index: index,
                      answer: value,
                      question: questionText,
                    );
                  },
                  style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Enter your answer',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
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

                        context.read<SurveyCubit>().changePage(index: 2);
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
