import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_practice/core/enums/gendar.dart';
import 'package:stacked_architecture_practice/core/models/user.dart';
import 'package:stacked_architecture_practice/ui/screens/dashboard/dashboard_view_model.dart';

import '../../util/helper.dart';

class UserTile extends ViewModelWidget<DashboardViewModel> {
  final User user;

  const UserTile({Key? key, required this.user})
      : super(key: key, reactive: false);

  @override
  Widget build(BuildContext context, model) {
    return ListTile(
      onTap: () => model.viewUserDetails(user),
      leading: CircleAvatar(
        child: Icon(Icons.person),
        backgroundColor: getColorFromFlag(user.imageFlag),
      ),
      title: Text("${user.firstName} ${user.lastName}"),
      subtitle: Text(user.gender.string()),
      trailing: IconButton(
          onPressed: () => model.deleteUser(user), icon: Icon(Icons.delete)),
    );
  }
}
