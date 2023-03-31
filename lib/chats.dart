import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var name = [
    'Ayomide',
    'Charles',
    'Omotosho',
    'Prosper',
    'Bunmi',
    'Mark',
    'Tolu',
    'Shola',
    'James',
    'A TownHall',
    'Different',
    'From',
    'Balablu',
    'Bulabu',
    'Blu Blu'
  ];

  var text = ['hello world', 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: text.length,
        itemBuilder: (context, index) {
          var currentIteration = text[index];
          var names = name[index];

          return ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
            title: Text(names),
            subtitle: Text('$currentIteration...'),
            trailing: const Icon(Icons.mark_chat_read),
          );
        });
  }
}
