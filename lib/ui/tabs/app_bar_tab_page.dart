import 'package:flutter/material.dart';

class AppBarTabPage extends StatefulWidget {
  const AppBarTabPage({Key? key}) : super(key: key);

  @override
  _AppBarTabPageState createState() => _AppBarTabPageState();
}

class _AppBarTabPageState extends State<AppBarTabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () => _tabController.animateTo(0), child: Text('Option 1')),
            TextButton(onPressed: () => _tabController.animateTo(1), child: Text('Option 2')),
            TextButton(onPressed: () => _tabController.animateTo(2), child: Text('Option 3'))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('App Bar Tabs'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPage(context, 'Tab 1 Content', Colors.yellow),
          _buildPage(context, 'Tab 2 Content', Colors.grey),
          _buildPage(context, 'Tab 3 Content', Colors.orange),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, String text, Color color) => Container(
        color: color,
        child: Center(child: Text(text)),
      );
}
