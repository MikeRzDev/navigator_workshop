import 'package:flutter/material.dart';

class Ex2SecondPage extends StatelessWidget {
  const Ex2SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: Container(),
      title: Text('Named Route'),
    ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Im second page'),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go Back'))
        ],
      ),
    ),
  );
}
