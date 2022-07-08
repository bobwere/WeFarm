// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/presentation/pages/intro/intro_page.dart';
import 'package:wefarm/presentation/pages/success/success_page.dart';
import 'package:wefarm/presentation/pages/survey/question_1.dart';
import 'package:wefarm/presentation/pages/survey/question_2.dart';
import 'package:wefarm/presentation/pages/survey/question_3.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool actionFired = false;

  @override
  void didChangeDependencies() {
    if (!actionFired) {
      context.read<SurveyCubit>().fetchSurvey();
      context.read<SurveyCubit>().initiateCronJob();

      setState(() {
        actionFired = !actionFired;
      });
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SurveyCubit, SurveyState>(
      listenWhen: (SurveyState p, SurveyState c) {
        return p.succesfullySubmittedSurveyAnswers !=
            c.succesfullySubmittedSurveyAnswers;
      },
      listener: (BuildContext context, SurveyState state) {
        if (state.succesfullySubmittedSurveyAnswers!) {
          return showLoadingSnackBar(
            context,
            'We have successfully synced the surveys you took to the cloud',
          );
        }
      },
      child: BlocBuilder<SurveyCubit, SurveyState>(
        builder: (context, state) {
          if (state.index == 0) {
            return const IntroPage();
          }

          if (state.index == 1) {
            return const QuestionOnePage();
          }

          if (state.index == 2) {
            return const QuestionTwoPage();
          }

          if (state.index == 3) {
            return const QuestionThreePage();
          }

          if (state.index == 4) {
            return const SuccessPage();
          }

          return const Scaffold();
        },
      ),
    );
  }

  void showErrorSnackBar(BuildContext context, String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: const Duration(seconds: 3),
        content: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void showLoadingSnackBar(BuildContext context, String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blueAccent,
        duration: const Duration(seconds: 3),
        content: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void showSuccessSnackBar(BuildContext context, String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
        content: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
