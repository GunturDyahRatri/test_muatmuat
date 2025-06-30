import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonComment extends StatelessWidget {
  final int? count;
  final VoidCallback? onTap;
  const ButtonComment({super.key, this.count, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            CupertinoIcons.conversation_bubble,
            color: Colors.grey,
          ),
          SizedBox(width: 4),
          Visibility(
            visible: (count ?? 0) != 0,
            child: Text(
              '$count',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
        ],
      ),
    );
  }
}
