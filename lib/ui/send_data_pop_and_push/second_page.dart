import 'package:flutter/material.dart';

class Ex3SecondPage extends StatelessWidget {
  final String data;

  const Ex3SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Send Data Pop and Push'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im second page'),
              SizedBox(height: 20),
              Text('my data is: $data'),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Go Back'))
            ],
          ),
        ),
      );
}
