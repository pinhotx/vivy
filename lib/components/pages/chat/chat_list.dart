import 'package:flutter/material.dart';

final List<String> contatos = <String>[
  'João Bobão Vitório',
  'Kizuki_Oki',
  'Pinho Santiago',
];

final List<int> colorCodes = <int>[600, 500, 100];

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: contatos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text('${contatos[index]}'),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
