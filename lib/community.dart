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
                color: Colors.red,
              ),
              height: 150,
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('SQI COMMUNITY'),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
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
                color: Colors.red,
              ),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('FIFA FORUM'),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
                  ),
                  Row(
                    children: const [Icon(Icons.percent), Icon(Icons.percent)],
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
