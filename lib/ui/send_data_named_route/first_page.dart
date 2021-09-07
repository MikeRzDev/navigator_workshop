import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/send_data_named_route/screen_data.dart';

import '../route.dart';

class Ex4FirstPage extends StatelessWidget {
  const Ex4FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Send Data Named Route'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Im first page'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, ROUTE_SECOND_PAGE_SEND_DATA, arguments: ScreenData('Data abc 123 !@#')),
                  child: Text('Go to next screen'))
            ],
          ),
        ),
      );
}
