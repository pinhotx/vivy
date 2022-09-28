import 'package:flutter/material.dart';
import 'package:vivy/components/pages/chat_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Text(
                  "Uau",
                  textAlign: TextAlign.center,
                ),
              ),
              Text("Oi eu sou Vivy",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5),
              Text(
                "Crie sua comunidade",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1?.color),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
                child: Text('Chat'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
