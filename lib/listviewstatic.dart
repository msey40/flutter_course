import 'package:flutter/material.dart';

class Listviewstatic extends StatefulWidget {
  const Listviewstatic({super.key});
  @override
  State<Listviewstatic> createState() => _ListviewstaticState();
}

class _ListviewstaticState extends State<Listviewstatic> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Container(
          color: Colors.amber[500],
          padding: const EdgeInsets.all(16.0),
          child: const Text('Item 1', style: TextStyle(fontSize: 18)),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('User 1'),
          subtitle: Text('Subtitle 1'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('User 2'),
          subtitle: Text('Subtitle 2'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('User 3'),
          subtitle: Text('Subtitle 3'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
