import 'package:flutter/material.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text('Drawer Title'),
            ),
            ListTile(
              title: Text('Page 1'),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Page 2'),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Close'),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
