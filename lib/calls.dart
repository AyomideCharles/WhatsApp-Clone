import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Calls',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide())),
              ),
              ListTile(
                leading: Icon(Icons.link_sharp),
                title: Text(
                  'Create Call Link',
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: Text(
                  'Share a link for your WhatsApp call',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              CallLogs(),
            ]),
      ),
    );
  }
}

class CallLogs extends StatefulWidget {
  const CallLogs({super.key});

  @override
  State<CallLogs> createState() => _CallLogsState();
}

class _CallLogsState extends State<CallLogs> {
  var logs = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: logs.length,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Small Lion',
            style: TextStyle(color: Colors.blue),
          ),
          subtitle: Text(
            'Missed',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Icon(Icons.info),
        );
      },
    );
  }
}
