// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: inference_failure_on_function_invocation

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wefarm/common/string_constants.dart';
import 'package:wefarm/domain/entities/answer/answer.dart';
import 'package:wefarm/domain/entities/survey/survey.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      await Hive.initFlutter();

      Hive
        ..registerAdapter(AnswerAdapter())
        ..registerAdapter(SurveyAnswersAdapter())
        ..registerAdapter(EngStringsAdapter())
        ..registerAdapter(StringsAdapter())
        ..registerAdapter(OptionAdapter())
        ..registerAdapter(QuestionAdapter())
        ..registerAdapter(SurveyAdapter());

      await Hive.openBox<Survey>(surveyBox);
      await Hive.openBox<List<SurveyAnswers>>(surveyAnswerBox);

      await BlocOverrides.runZoned(
        () async => runApp(await builder()),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
