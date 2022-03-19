import '../enums/gendar.dart';

class User {
  int id;
  String firstName;
  String lastName;
  Gender gender;
  int imageFlag;

  User(this.id, this.firstName, this.lastName, this.gender, this.imageFlag);
}
