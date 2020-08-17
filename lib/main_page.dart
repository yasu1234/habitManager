import 'package:flutter/material.dart';
import 'package:habitmanager/home.dart';
import 'package:habitmanager/record.dart';
import 'package:habitmanager/setting.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;

  List _pages = [
    Home(),
    Record(),
    Setting()
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title)),
      body: Center(child: _pages[_selectedTabIndex]), 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex, 
        onTap: _changeIndex, 
        type: BottomNavigationBarType.fixed, 
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("ホーム")), 
          BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text("記録")),
          BottomNavigationBarItem(icon: Icon(Icons.data_usage), title: Text("登録")),
          ], 
      ), 
    );
  }
}
