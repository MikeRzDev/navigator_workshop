import 'package:flutter/material.dart';

import '../route.dart';

class Ex2FirstPage extends StatelessWidget {
  const Ex2FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Named Route'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im first page'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, ROUTE_SECOND_PAGE),
                  child: Text('Go to next screen'))
            ],
          ),
        ),
      );
}
