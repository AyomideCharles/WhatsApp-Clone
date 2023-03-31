import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List names = ['Ayomide', 'Charles', 'Omotosho', 'Flutter', 'Javascript'];
  int selectedIndex = 0;

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
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 5),
            color: Colors.grey,
            child: const Text('RECENT UPDATES'),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (context, index) {
                var name = names[index];

                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.update),
                  ),
                  title: Text(name),
                  subtitle: const Text('1h ago'),
                );
              })
        ],
      ),
    );
  }
}
