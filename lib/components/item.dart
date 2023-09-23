import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  Items({super.key, required this.name1, required this.image1});
  String? name1;
  String? image1;
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  get image1 => null;

  get name1 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: Colors.black,
      elevation: 8,
      child: InkWell(
          onTap: () {},
          child: Column(children: [
            Ink.image(
              image: AssetImage(
                image1!,
              ),
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 3,
            ),
            Text(name1!),
            SizedBox(
              height: 3,
            )
          ])),
    ));
  }
}
