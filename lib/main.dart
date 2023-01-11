import 'dart:async';

import 'package:deriv/configuration/lib/environment/env.dart';
import 'package:deriv/di/di.dart';
import 'package:deriv/manifest.dart';
import 'package:deriv/presentation/home/ui/main_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:configuration/environment/build_config.dart';
import 'package:configuration/environment/env.dart';
import 'package:configuration/route/route_define.dart';
import 'package:configuration/style/style.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  SetupEnv();
}

class SetupEnv extends Env {
  @override
  FutureOr<void> onCreate() async {
    initRoute(routerIds);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    setStyleDefault();
  }

  @override
  Widget onCreateView() {
    ErrorWidget.builder = (FlutterErrorDetails details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return Container(color: Colors.transparent);
    };
    return const MainApplication();
  }

  @override
  Future? onInjection() async {
    configureGetIt();
  }
}
