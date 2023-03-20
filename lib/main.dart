import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'WhatsApp Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      // animationDuration: const Duration(),
      initialIndex: 1,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: ((context) {
                    return const SizedBox(
                      height: 150,
                      child: Text('hello world'),
                    );
                  }));
            },
            child: const Icon(Icons.chat),
          ),
          appBar: AppBar(
            // toolbarHeight: 30,
            title: Text(widget.title),
            elevation: 0,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
            actions: [
              IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text('New Chat')),
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('welcome'))
                  ];
                },
              )
            ],
          ),
          body: const TabBarView(
            children: [Text('helo'), Chats(), Status(), Calls()],
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}

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
                  color: const Color.fromARGB(255, 62, 60, 60),
                  child: const Text(
                    'RECENT UPDATES',
                    style: TextStyle(color: Colors.grey),
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

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Calls',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
                ListTile(
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
                ),
              ]),
        ),
      ),
    );
  }
}
