import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/pop_and_push/second_page.dart';
import 'package:navigator_workshop/ui/popup_route/second_page.dart';

class Ex7FirstPage extends StatelessWidget {
  const Ex7FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup route'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im first page'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                          barrierDismissible: true,
                          opaque: false,
                          pageBuilder: (_, anim1, anim2) => FadeTransition(
                                opacity: anim1,
                                child: Ex7SecondPage(),
                              ))),
                  child: Text('Go to next screen'))
            ],
          ),
        ),
      ),
    );
  }
}
