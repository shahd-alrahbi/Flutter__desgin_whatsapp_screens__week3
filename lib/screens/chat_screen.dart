import 'package:desgin_whatsapp_screens/models/chats_model.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  ChatsScreen({super.key, required this.chat});
  ChatModel chat;
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<ChatModel> chats = [
    ChatModel(
      image:
          "https://i.pinimg.com/236x/ad/57/b1/ad57b11e313616c7980afaa6b9cc6990.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
      Time: DateTime(12),
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/67/1d/d9/671dd9b7c98de8612408d953cda24315.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/3c/56/57/3c565704e64803ba76e9d03aa86bb19b.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/15/0f/a8/150fa8800b0a0d5633abc1d1c4db3d87.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/25/9f/93/259f9388af182b222f69186c0c63ecb1.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) => SizedBox(
        width: 100,
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(chats[index].image!),
            ),
            title: Text(chats[index].name!),
            subtitle: Text(chats[index].message!),
            trailing: Text(chats[index].Time.toString()),
          ),
        ),
      ),
    ));
  }
}
