import 'package:flutter/material.dart';

class ViewPagerPage extends StatelessWidget {
  const ViewPagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text('View Pager'),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          _buildPage(context, 'Page 1', Colors.purple),
          _buildPage(context,'Page 2', Colors.green),
          _buildPage(context,'Page 3', Colors.blue),
        ],
      ),
    );
  }


  Widget _buildPage(BuildContext context, String text, Color color) => Container(
    color: color,
    child: Center(child: Text(text)),
  );
}
