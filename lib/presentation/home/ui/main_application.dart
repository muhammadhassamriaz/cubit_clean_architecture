import 'package:flutter/material.dart';

import '../../../configuration/lib/route/route_define.dart';
import '../../../manifest.dart';
import 'home_route.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class MainApplication extends StatefulWidget {
  const MainApplication({super.key});

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication>
    with WidgetsBindingObserver {
  bool canPopDialog = false;

  final route = routerIds[HomeRoute()];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.paused:
        break;
      default:
        break;
    }
  }

  @override
  Future<bool> didPopRoute() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      initialRoute: route,
      onGenerateRoute: (settings) => manifest(
        generateRoutes,
        settings,
      ),
    );
  }
}
