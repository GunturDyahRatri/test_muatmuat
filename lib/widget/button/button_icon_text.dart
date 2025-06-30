import 'package:flutter/material.dart';

class ButtonIconText extends StatelessWidget {
  final Widget icon;
  final String? label;
  final VoidCallback? onTap;

  const ButtonIconText({
    super.key,
    required this.icon,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: icon,
            ),
            Text(label ?? '')
          ],
        ),
      ),
    );
  }
}
