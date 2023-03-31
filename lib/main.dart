import 'package:flutter/material.dart';

import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/community.dart';
import 'package:whatsapp/status.dart';

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
      home: const MyHomePage(title: 'WhatsApp'),
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
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.chat),
          // ),
          appBar: AppBar(
            // toolbarHeight: 30,
            title: Text(widget.title),
            elevation: 0,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.group_add),
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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New broadcast')),
                    const PopupMenuItem(child: Text('Linked devices')),
                    const PopupMenuItem(child: Text('Starred messages')),
                    const PopupMenuItem(child: Text('Settings'))
                  ];
                },
              )
            ],
          ),
          body: const TabBarView(
            children: [Community(), Chats(), Status(), Calls()],
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}