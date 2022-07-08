// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wefarm/application/surveycubit/survey_cubit.dart';
import 'package:wefarm/common/asset_constants.dart';
import 'package:wefarm/common/spacing.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
                  survey,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),

              //title
              const Text(
                'Welcome to WeFarm',
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
                      text: 'Take a quick survey! ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '''Your opinion is important to us! We want to understand if the impact of Internet of Things has been useful for you and your community.''',
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
                    context.read<SurveyCubit>().changePage(index: 1);
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
                  child: const Text('Begin now'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
