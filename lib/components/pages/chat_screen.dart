import 'package:flutter/material.dart';
import 'package:vivy/welcome_screen.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                ),
              );
            }
          })
        ],
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));
        },
        child: Text('Chat'),
      )),
    );
  }
}
