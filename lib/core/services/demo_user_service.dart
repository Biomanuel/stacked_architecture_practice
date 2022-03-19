import 'dart:async';
import 'dart:math';

import '../enums/gendar.dart';
import '../models/user.dart';

class DemoUserService {
  static int lastId = 0;
  List<User> _demoUsers = [];

  FutureOr<List<User>> get demoUsers async {
    if (_demoUsers.isEmpty) {
      await _generateDemoUsers();
    }
    return _demoUsers;
  }

  Future<void> _generateDemoUsers() async {
    await Future.delayed(const Duration(seconds: 2));
    _demoUsers.addAll(List.generate(
        10,
        (index) => User(lastId++, _randomName(), _randomName(), _randomGender(),
            Random().nextInt(3))));
  }

  User getAdmin() {
    return User(-1, "Ade", "Olusola", _randomGender(), 1);
  }

  void deleteUser(User user) {
    _demoUsers.remove(user);
  }

  void addUser(User user) {
    _demoUsers.add(user);
  }

  void updateUser(User user) {
    var query = _demoUsers.takeWhile((value) => value.id == user.id);
    if (query.isNotEmpty) {
      _demoUsers.remove(query.first);
      _demoUsers.add(user);
    }
  }

  String _randomName() {
    List<String> demoNames = [
      "Ade",
      "Segun",
      "Goodluck",
      "Ben",
      "Great",
      "Emmanuel",
      "Shade",
      "Olusola",
      "Ugwu",
      "Emeka",
      "Toochukwu"
    ];
    return demoNames[Random().nextInt(demoNames.length)];
  }

  Gender _randomGender() {
    return Gender.values[Random().nextInt(2)];
  }
}
