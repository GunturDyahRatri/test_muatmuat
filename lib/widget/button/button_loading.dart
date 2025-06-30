import 'package:flutter/material.dart';

class ButtonLoading extends StatelessWidget {
  final String? label;
  const ButtonLoading({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      label: Text(label ?? 'Loading, Please wait...'),
      onPressed: null,
    );
  }
}
