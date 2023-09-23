import 'package:desgin_whatsapp_screens/models/setting.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<Setting> char = [
    Setting(
        name1: "Account",
        image1: Icon(Icons.account_balance),
        det: "Privacy .security"),
    Setting(
        name1: "Chat",
        image1: Icon(Icons.chat),
        det: "Theme,security,change number"),
    Setting(
        name1: "Notificacion",
        image1: Icon(Icons.notification_add),
        det: "Massage, Grop,& call"),
    Setting(
        name1: "Stroage and Data",
        image1: Icon(Icons.storage),
        det: "Network Usage "),
    Setting(name1: "Help", image1: Icon(Icons.help), det: "Help Center "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Setting"),
      ),
      body: Column(children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/236x/ad/57/b1/ad57b11e313616c7980afaa6b9cc6990.jpg"),
            ),
            title: Text("shahd"),
            subtitle: Text("Welcome"),
          ),
        ),
        Container(
          width: 400,
          height: 300,
          child: ListView.builder(
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Card(
                child: ListTile(
                  leading: char[index].image1!,
                  title: Text(char[index].name1!),
                  subtitle: Text(char[index].det!),
                ),
              ),
            ),
            itemCount: char.length,
          ),
        ),
      ]),
    );
  }
}
