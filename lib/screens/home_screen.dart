import 'package:desgin_whatsapp_screens/models/chats_model.dart';
import 'package:desgin_whatsapp_screens/screens/chat_screen.dart';
import 'package:desgin_whatsapp_screens/screens/status_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatsScreen(
                      chat: ChatModel(),
                    ),
                  ));
            },
            child: Icon(
              Icons.chat,
            ),
          ),
          appBar: AppBar(
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) {
                  return ["Setting", "Theme Mode"].map((e) {
                    return PopupMenuItem(
                      child: Text(e),
                      onTap: () {},
                    );
                  }).toList();
                },
                offset: const Offset(0, 15),
              )
            ],
            title: const Text("Whatsapp"),
            backgroundColor: Colors.green,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATE"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text("Camera")),
            ChatsScreen(
              chat: ChatModel(),
            ),
            StatusScreen(),
            Center(child: Text("Chats")),
          ]),
        ));
  }
}
