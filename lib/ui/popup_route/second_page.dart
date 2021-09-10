import 'package:flutter/material.dart';

class Ex7SecondPage extends StatelessWidget {
  const Ex7SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width / 8,
        MediaQuery.of(context).size.height / 4,
        MediaQuery.of(context).size.width / 8,
        MediaQuery.of(context).size.height / 4,
      ),
      child: Material(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im second page'),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Go Back'))
            ],
          ),
        ),
      ),
    );
  }
}
