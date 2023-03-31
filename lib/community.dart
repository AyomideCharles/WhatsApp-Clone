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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Communities',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 213, 217, 218)),
              height: 60,
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                children: const [
                  Icon(Icons.group_add_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text('New Communities')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 300,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.gamepad),
                    title: Text('FIFA COMMUNITY'),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.sports_football),
                    title: Text('Rouge Naija Gamers'),
                    subtitle: Text('+2349019377505: Yes .....'),
                    trailing: Text('10:14am'),
                  ),
                  ListTile(
                    leading: Icon(Icons.sports_football),
                    title: Text('Gamers NG'),
                    subtitle: Text('+2349019377505: Yes .....'),
                    trailing: Text('12:24pm'),
                  ),
                  ListTile(
                    leading: Icon(Icons.sports_football),
                    title: Text('Gamers NG'),
                    subtitle: Text('+2349019377505: Yes .....'),
                    trailing: Text('1:16pm'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('SQI Community'),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.flutter_dash_rounded),
                    title: Text('Flutter Class'),
                    subtitle: Text('+2349019377505: Yes .....'),
                  ),
                  ListTile(
                    leading: Icon(Icons.javascript_rounded),
                    title: Text('Javascript Class'),
                    subtitle: Text('+2349019377505: Yes .....'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
