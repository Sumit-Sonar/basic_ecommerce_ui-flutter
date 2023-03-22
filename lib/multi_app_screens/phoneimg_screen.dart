import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/items.dart';

class Phoneimg_screen extends StatelessWidget {

  const Phoneimg_screen({Key? key  }):
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(20)),
              Image.network("https://static.toiimg.com/photo/81333900/Xiaomi-Redmi-Note-10-Pro-128GB-8GB-RAM.jpg"),
            ],
          ),
        ));
  }
}
