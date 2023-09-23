import 'package:desgin_whatsapp_screens/models/chats_model.dart';
import 'package:desgin_whatsapp_screens/models/setting.dart';
import 'package:desgin_whatsapp_screens/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<ChatModel> chats = [
    ChatModel(
      image:
          "https://i.pinimg.com/236x/15/0f/a8/150fa8800b0a0d5633abc1d1c4db3d87.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
      Time: DateTime(12),
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/ad/57/b1/ad57b11e313616c7980afaa6b9cc6990.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
  ];
  List<ChatModel> chats2 = [
    ChatModel(
      image:
          "https://i.pinimg.com/236x/15/0f/a8/150fa8800b0a0d5633abc1d1c4db3d87.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
      Time: DateTime(12),
    ),
    ChatModel(
      image:
          "https://i.pinimg.com/236x/ad/57/b1/ad57b11e313616c7980afaa6b9cc6990.jpg",
      name: "Programming ",
      message: "Here you can find Programming",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/236x/ad/57/b1/ad57b11e313616c7980afaa6b9cc6990.jpg"),
            ),
            title: Text("Shahd"),
            subtitle: Text("Shahd alrahbi"),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                      ));
                },
                icon: Icon(Icons.settings)),
          ),
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Recent Updeates",
              style: TextStyle(color: Colors.grey),
            )),
        Container(
          height: 200,
          child: ListView.builder(
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
                ),
              ),
            ),
            itemCount: chats.length,
          ),
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "viewed Updeates",
              style: TextStyle(color: Colors.grey),
            )),
        Container(
          height: 200,
          child: ListView.builder(
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(chats2[index].image!),
                  ),
                  title: Text(chats2[index].name!),
                  subtitle: Text(chats2[index].message!),
                ),
              ),
            ),
            itemCount: chats2.length,
          ),
        )
      ],
    ));
  }
}
