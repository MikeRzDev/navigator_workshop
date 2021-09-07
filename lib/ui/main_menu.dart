import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/dialogs/first_page.dart';
import 'package:navigator_workshop/ui/named_route/first_page.dart';
import 'package:navigator_workshop/ui/pop_and_push/first_page.dart';
import 'package:navigator_workshop/ui/return_data/first_page.dart';
import 'package:navigator_workshop/ui/send_data_named_route/first_page.dart';
import 'package:navigator_workshop/ui/send_data_pop_and_push/first_page.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  final menuItems = const [
    'Pop and Push',
    'Named Route',
    'Send Data Pop and Push',
    'Send Data Named Route',
    'Return Data',
    'Dialogs'
  ];

  @override
  Widget build(BuildContext context) {
    print('i build MainMenu');
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationDemo'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: ListView.separated(
            itemBuilder: (_, index) => _buildMenuItem(context, index),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuItems.length),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, int index) => GestureDetector(
        onTap: () => _navigateToSelection(context, index),
        child: Container(
          padding: EdgeInsets.only(left: 5),
          child: Text(menuItems[index]),
        ),
      );

  void _navigateToSelection(BuildContext context, int index) {
    switch (index) {
      case 0:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex1FirstPage()));
          break;
        }
      case 1:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex2FirstPage()));
          break;
        }
      case 2:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex3FirstPage()));
          break;
        }
      case 3:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex4FirstPage()));
          break;
        }
      case 4:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex5FirstPage()));
          break;
        }
      case 5:
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ex6FirstPage()));
          break;
        }
    }
  }
}
