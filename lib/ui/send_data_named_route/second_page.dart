import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/send_data_named_route/screen_data.dart';

class Ex4SecondPage extends StatelessWidget {
  const Ex4SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ScreenData;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Send Data Named Route'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Im second page'),
            SizedBox(height: 20),
            Text('my data is: ${args.data}'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Go Back'))
          ],
        ),
      ),
    );
  }
}
