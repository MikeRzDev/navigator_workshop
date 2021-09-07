import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/pop_and_push/second_page.dart';
import 'package:navigator_workshop/ui/return_data/second_page.dart';

class Ex5FirstPage extends StatefulWidget {
  const Ex5FirstPage({Key? key}) : super(key: key);

  @override
  _Ex5FirstPageState createState() => _Ex5FirstPageState();
}

class _Ex5FirstPageState extends State<Ex5FirstPage> {
  String? data;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Return Data'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im first page'),
              SizedBox(height: 20),
              Text('And my data is: $data'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    final newData = await Navigator.push<String>(context, MaterialPageRoute(builder: (_) => Ex5SecondPage()));
                    setState(() {
                      data = newData;
                    });
                  },
                  child: Text('Go to next screen'))
            ],
          ),
        ),
      );
}
