import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome", // TODO: Replace with the greeting from the model
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Mr. Admin", // TODO: Replace with the response from the model
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // TODO: Extract Widget and separate to the widgets directory
                    return ListTile(
                      onTap: () {
                        // TODO: Call the right method from the model here
                      },
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text("Ade Olusola"),
                      subtitle: Text("Male"),
                      trailing: Icon(Icons.delete),
                    );
                  })),
        ],
      ),
    );
  }
}
