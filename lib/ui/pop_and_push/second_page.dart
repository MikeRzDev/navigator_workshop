import 'package:flutter/material.dart';

class Ex1SecondPage extends StatelessWidget {
  const Ex1SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('i build Ex1SecondPage');

    /*Future.doWhile(() async {
      await Future.delayed(Duration(milliseconds: 500));
      print('im alive!');
      return true;
    }).timeout(Duration(seconds: 20));*/

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Pop and Push'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Im second page'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Go Back'))
          ],
        ),
      ),
    );
  }
}
