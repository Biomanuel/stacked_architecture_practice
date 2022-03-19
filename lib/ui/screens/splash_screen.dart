import 'package:flutter/material.dart';
import 'package:stacked_architecture_practice/config/app_setup.locator.dart';
import 'package:stacked_architecture_practice/config/app_setup.router.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      locator<NavigationService>().replaceWith(Routes.dashboardScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Dashboard App",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
