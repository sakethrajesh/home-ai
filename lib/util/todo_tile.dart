
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  TodoTile({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
      child: Card(
        color: Colors.grey[800],
        elevation: 0,
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: IconButton(
            icon: Icon(icon),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}