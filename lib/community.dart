import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Communities',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Container(
            height: 60,
            color: Colors.red,
            child: const Text('welcome'),
          ),
        ],
      ),
    );
  }
}