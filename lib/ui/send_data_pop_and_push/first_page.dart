import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/pop_and_push/second_page.dart';
import 'package:navigator_workshop/ui/send_data_pop_and_push/second_page.dart';

class Ex3FirstPage extends StatelessWidget {
  const Ex3FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Send Data Pop and Push'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im first page'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Ex3SecondPage(
                                data: 'Data abc 123 !@#',
                              ))),
                  child: Text('Go to next screen'))
            ],
          ),
        ),
      );
}
