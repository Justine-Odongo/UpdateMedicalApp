
import 'package:flutter/material.dart';
Widget buildMenuItem(
    BuildContext context,{
      required String text,
      required IconData icon,
    }) {

  return ListTile(
    leading: Icon(Icons.notifications),
    title:Text('Notifications'),
    onTap: ()=>null,
  );
}
