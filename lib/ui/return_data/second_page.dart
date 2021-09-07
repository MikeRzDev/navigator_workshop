import 'package:flutter/material.dart';

class Ex5SecondPage extends StatefulWidget {
  const Ex5SecondPage({Key? key}) : super(key: key);

  @override
  _Ex5SecondPageState createState() => _Ex5SecondPageState();
}

class _Ex5SecondPageState extends State<Ex5SecondPage> {
  String? data;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: Container(),
      title: Text('Return Data'),
    ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Im second page'),
          SizedBox(height: 20),
          Container(
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'My Data'
              ),
              onChanged: (text) => data = text,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => Navigator.pop(context, data),
              child: Text('Go Back'))
        ],
      ),
    ),
  );
}
