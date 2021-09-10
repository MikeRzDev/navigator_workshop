import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/tabs/app_bar_tab_page.dart';
import 'package:navigator_workshop/ui/tabs/custom_tab_page.dart';

class MainTabPage extends StatelessWidget {
  const MainTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AppBarTabPage())),
              child: Text('AppBar Tap Example'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CustomTabPage())),
              child: Text('Custom Tap Example'),
            ),
          ],
        ),
      ),
    );
  }
}
