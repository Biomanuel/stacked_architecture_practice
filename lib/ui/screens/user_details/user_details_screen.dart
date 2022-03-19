import 'package:flutter/material.dart';
import 'package:stacked_architecture_practice/core/enums/gendar.dart';
import 'package:stacked_architecture_practice/core/models/user.dart';
import 'package:stacked_architecture_practice/util/helper.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
        actions: [
          IconButton(
              onPressed: () {
                // TODO: Call the model's edit method
              },
              icon: Icon(Icons.edit)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: getColorFromFlag(user.imageFlag),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 44,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "First Name:",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("${user.firstName}"),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Last Name:",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("${user.lastName}"),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Gender:",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "${user.gender.string()}",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
