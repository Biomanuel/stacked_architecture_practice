import 'dart:math';

import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_practice/config/app_setup.locator.dart';
import 'package:stacked_architecture_practice/config/app_setup.router.dart';
import 'package:stacked_architecture_practice/core/enums/gendar.dart';
import 'package:stacked_architecture_practice/core/models/user.dart';
import 'package:stacked_architecture_practice/core/services/demo_user_service.dart';
import 'package:stacked_services/stacked_services.dart';

class DashboardViewModel extends BaseViewModel {
  final userService = locator<DemoUserService>();
  final navService = locator<NavigationService>();

  String get greeting => _randomGreeting();

  String get adminName {
    if (userService.getAdmin().gender == Gender.male) {
      return "Mr. ${userService.getAdmin().firstName}";
    } else {
      return "Mrs. ${userService.getAdmin().firstName}";
    }
  }

  Future<List<User>> get users async => userService.demoUsers;

  String _randomGreeting() {
    var greetings = ["Welcome", "Howdy", "Hello"];
    return greetings[Random().nextInt(greetings.length)];
  }

  void viewUserDetails(User user) {
    navService.navigateTo(Routes.userDetailsScreen,
        arguments: UserDetailsScreenArguments(user: user));
  }

  void deleteUser(User user) {
    userService.deleteUser(user);
    notifyListeners();
  }
}
