import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: const [
                CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                Positioned(
                  bottom: -5,
                  right: 0,
                  child: Icon(Icons.add),
                )
              ],
            ),
            title: const Text(
              'My Status',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: const Text(
              'Add to my Status',
              style: TextStyle(fontSize: 16),
            ),
            trailing: const Icon(Icons.camera_alt),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                  color: Colors.grey,
                  child: const Text(
                    'RECENT UPDATES',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}