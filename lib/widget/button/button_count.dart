import 'package:flutter/material.dart';

class ButtonCount extends StatelessWidget {
  final VoidCallback? onTap;
  const ButtonCount({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Text(
          '-',
          style: TextStyle(
            fontSize: 42,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class ButtonIncrement extends StatelessWidget {
  final VoidCallback? onTap;
  const ButtonIncrement({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Text(
          '+',
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 0.77,
            fontSize: 42,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class ButtonDecrement extends StatelessWidget {
  final VoidCallback? onTap;
  const ButtonDecrement({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Text(
          '-',
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 0.77,
            fontSize: 42,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
