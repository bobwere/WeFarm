// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/common/asset_constants.dart';
import 'package:wefarm/common/spacing.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: fullHorizontalPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset(
                  success,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),

              //title
              const Text(
                'Successfully submitted',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              //subtext
              const Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '''We appreciate the time you took to participate in this survey. Your data has been saved locally and will be synchronized to the cloud within 15 minutes or less.You shall receive pop up message to notify you on the same as you continue to explore other parts of the application.''',
                      style: TextStyle(fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //button
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<SurveyCubit>()
                        .navigateToNextOrPreviousQuestion(
                          index: 0,
                          isForward: true,
                        );
                    context.read<SurveyCubit>().changePage(index: 0);
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
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  child: const Text('Take the survey again'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
