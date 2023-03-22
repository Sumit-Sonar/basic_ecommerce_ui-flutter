import "package:flutter/material.dart";
import 'package:flutter_first_app/models/items.dart';

class itemsScreen extends StatelessWidget {
  final Items items;

  const itemsScreen({Key? key, required this.items})
  : assert(items!=null),
    super (key: key);
  
  @override
  Widget build(BuildContext context) {
        // ignore: todo
        // TODO: implement build
    return Card(
      child: ListTile(
        leading: Image.network(items.imageurl),
        title: Text(items.name),
        subtitle: Text(items.desp),

        trailing: Text("/-${items.prize}",
        textScaleFactor: 1,
        style: const TextStyle(
          color: Colors.lightBlue,
          fontWeight: FontWeight.bold,  
        ),),

        
      ),
    );
  }
}
