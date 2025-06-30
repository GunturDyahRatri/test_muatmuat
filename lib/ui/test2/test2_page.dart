import 'package:flutter/material.dart';
import 'package:test_muatmuat/widget/dialog/dialog_info.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test2'), centerTitle: true),
      body: Center(child: _buttonSave()),
    );
  }

  Widget _buttonSave() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: Colors.grey.shade200, width: 0.5),
        ),
      ),
      child: FilledButton(
        onPressed: () {
          _confirmSuccess();
        },
        child: Text('Pop up'),
      ),
    );
  }

  Future<bool> _confirmSuccess() async {
    return await showDialog(
      context: context,
      builder: (c) {
        return ContentDialoginfo.success(
          // title: 'Berhasil',
          message: 'Hello World!',
          onTapButton: () async {
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
