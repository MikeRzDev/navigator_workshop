import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/pop_and_push/second_page.dart';

class Ex1FirstPage extends StatelessWidget {
  const Ex1FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('i build Ex1FirstPage');
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop and Push'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Im first page'),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Ex1SecondPage())),
                child: Text('Go to next screen'))
          ],
        ),
      ),
    );
  }
}
