import 'package:flutter/material.dart';

class CustomTabPage extends StatefulWidget {
  const CustomTabPage({Key? key}) : super(key: key);

  @override
  _CustomTabPageState createState() => _CustomTabPageState();
}

class _CustomTabPageState extends State<CustomTabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Container(
              color: Colors.blueGrey,
              child: Text('Way More Text')),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.lightBlue,
              indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.lightBlue, width: 3.0)),
              tabs: [
                _buildStylishTab('Tab 1'),
                _buildStylishTab('Tab 2'),
                _buildStylishTab('Tab 3'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
              color: Colors.blueGrey,
              child: Text('Text Text Text')),
          SizedBox(height: 10),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              _buildPage('Tab 1 Content', Colors.teal),
              _buildPage('Tab 2 Content', Colors.lime),
              _buildPage('Tab 3 Content', Colors.brown)
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildStylishTab(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );

  Widget _buildPage(String text, Color color) => Container(
        color: color,
        child: Center(child: Text(text)),
      );
}
