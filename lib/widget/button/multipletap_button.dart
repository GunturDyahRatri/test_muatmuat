import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MultipleTapButton extends StatelessWidget {
  final Widget? child;
  final int tapCount;
  final Function() onTap;
  Timer? devPageClickTimer;
  int devPageTapped = 0;

  MultipleTapButton({
    super.key,
    required this.tapCount,
    required this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        devPageTapped++;
        if (devPageTapped >= tapCount) {
          onTap();
        }

        if (devPageClickTimer != null) {
          devPageClickTimer!.cancel();
        }

        devPageClickTimer =
            Timer(const Duration(seconds: 2), () => devPageTapped = 0);
      },
      child: child,
    );
  }
}
