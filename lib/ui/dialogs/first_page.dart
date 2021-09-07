import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/dialogs/dialog.dart';

class Ex6FirstPage extends StatefulWidget {
  const Ex6FirstPage({Key? key}) : super(key: key);

  @override
  _Ex6FirstPageState createState() => _Ex6FirstPageState();
}

class _Ex6FirstPageState extends State<Ex6FirstPage> {
  String? firstText;
  String? secondText;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Dialogs'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('first text is: $firstText'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    final returnText = await showInformationDialog<String>(
                      context,
                      title: 'First Case',
                      message: 'hello!',
                    );
                    setState(() {
                      firstText = returnText;
                    });
                  },
                  child: Text('show first dialog')),
              SizedBox(height: 20),
              Text('second text is: $secondText'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => showInformationDialogCallback(context,
                      title: 'Second Case',
                      message: 'hello!',
                      onOkPressed: (text) => setState(() {
                            secondText = text;
                          })),
                  child: Text('show second dialog'))
            ],
          ),
        ),
      );
}
