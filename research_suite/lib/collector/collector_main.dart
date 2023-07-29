import 'package:flutter/material.dart';

class CollectorMainPage extends StatefulWidget {
  const CollectorMainPage({super.key});

  @override
  State<StatefulWidget> createState() => _CollectorMainPage();
}

class _CollectorMainPage extends State<CollectorMainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Collector Page'),
    );
  }
}
