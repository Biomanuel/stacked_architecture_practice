// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../core/models/user.dart';
import '../ui/screens/dashboard/dashboard_screen.dart';
import '../ui/screens/splash_screen.dart';
import '../ui/screens/user_details/user_details_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String dashboardScreen = '/dashboard-screen';
  static const String userDetailsScreen = '/user-details-screen';
  static const all = <String>{
    splashScreen,
    dashboardScreen,
    userDetailsScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.dashboardScreen, page: DashboardScreen),
    RouteDef(Routes.userDetailsScreen, page: UserDetailsScreen),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreen(),
        settings: data,
      );
    },
    DashboardScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DashboardScreen(),
        settings: data,
      );
    },
    UserDetailsScreen: (data) {
      var args = data.getArgs<UserDetailsScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserDetailsScreen(
          key: args.key,
          user: args.user,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// UserDetailsScreen arguments holder class
class UserDetailsScreenArguments {
  final Key? key;
  final User user;
  UserDetailsScreenArguments({this.key, required this.user});
}
