import 'package:flutter/material.dart';
import 'package:stacked_architecture_practice/config/app_setup.locator.dart';
import 'package:stacked_architecture_practice/config/app_setup.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Architecture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: (settings) => StackedRouter().onGenerateRoute(settings),
      initialRoute: Routes.splashScreen,
    );
  }
}
