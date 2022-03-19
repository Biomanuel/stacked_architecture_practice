import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_practice/core/models/user.dart';
import 'package:stacked_architecture_practice/ui/screens/dashboard/dashboard_view_model.dart';

import '../../widgets/user_tile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ViewModelBuilder<DashboardViewModel>.reactive(
          viewModelBuilder: () => DashboardViewModel(),
          builder: (context, model, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.greeting,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        model.adminName,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: FutureBuilder<List<User>>(
                        future: model.users,
                        builder: (context, snapshot) {
                          if (snapshot.data != null &&
                              snapshot.data!.isNotEmpty) {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  var user = snapshot.data![index];
                                  return UserTile(user: user);
                                });
                          } else if (snapshot.hasError) {
                            return const Center(
                              child: Text(
                                  "An Error Occurred while trying to get users"),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        })),
              ],
            );
          }),
    );
  }
}
