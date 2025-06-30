import 'package:flutter/material.dart';

class Test3Page extends StatefulWidget {
  const Test3Page({super.key});

  @override
  State<Test3Page> createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test 3'), centerTitle: true),
      body: Center(),
    );
  }
}
