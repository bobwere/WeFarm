// ignore_for_file: use_build_context_synchronously, omit_local_variable_types, prefer_const_declarations, unawaited_futures, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/common/asset_constants.dart';
import 'package:wefarm/common/spacing.dart';

class QuestionThreePage extends StatefulWidget {
  const QuestionThreePage({super.key});

  @override
  State<QuestionThreePage> createState() => _QuestionThreePageState();
}

class _QuestionThreePageState extends State<QuestionThreePage> {
  bool isValid = false;

  @override
  void initState() {
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

    final String illustration = hectare;

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
                child: BlocBuilder<SurveyCubit, SurveyState>(
                  builder: (context, state) {
                    return TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.indigo,
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
                    );
                  },
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
                        surveyCubit.saveAnswersToLocalStorage();

                        context.read<SurveyCubit>().changePage(index: 4);
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
                      'Finish',
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
