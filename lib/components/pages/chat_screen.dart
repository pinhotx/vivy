import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:vivy/components/pages/welcome_screen.dart';
import 'package:vivy/components/pages/chat/chat_list.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversas"),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.person),
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected: (value) {
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
      //Content
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ChatListView(),
            ),
            Badge(
              badgeContent: Text('10'),
              child: Icon(
                Icons.pets,
                size: 50,
              ),
              shape: BadgeShape.square,
            ),
          ],
        ),
      ),
    );
  }
}
