import 'package:flutter/material.dart';

import 'collector/collector_main.dart';
import 'creator/creator_main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Research Suite',
            style: TextStyle(fontSize: 40),
          ),
          Text('Please choose any mode to continue'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreatorMainPage()));
              },
              child: Text('Creator Mode')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CollectorMainPage()));
              },
              child: Text('Collector Mode')),
        ],
      ),
    );
  }
}
