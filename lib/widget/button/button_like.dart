import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ButtonLike extends StatelessWidget {
  final Future<bool> Function(bool)? onTap;
  final bool? isLiked;
  final int? count;
  final String? valueEmtpyLike;
  final Widget? Function(int?, bool, String)? countBuilder;
  final Widget? Function(bool)? likeBuilder;
  final double size;

  const ButtonLike({
    super.key,
    this.onTap,
    this.isLiked,
    this.count,
    this.valueEmtpyLike,
    this.countBuilder,
    this.likeBuilder,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      circleColor:
          CircleColor(start: Color(0xffff355f), end: Color(0xffda356e)),
      bubblesColor: BubblesColor(
        dotPrimaryColor: Color(0xffef3f63),
        dotSecondaryColor: Color(0xffda356e),
      ),
      size: size,
      isLiked: isLiked,
      onTap: onTap,
      likeBuilder: (bool isLiked) {
        if (isLiked) {
          return Icon(
            CupertinoIcons.hand_thumbsup_fill,
            color: Colors.red,
          );
        } else {
          return Icon(
            CupertinoIcons.hand_thumbsup,
            color: Colors.grey,
          );
        }
      },
      likeCount: count,
      countBuilder: (count, isLiked, text) {
        var color = isLiked ? Colors.grey.shade600 : Colors.grey;
        Widget result;
        if ((count ?? 0) == 0) {
          result = Text(
            valueEmtpyLike ?? "like",
            style: TextStyle(color: color),
          );
        } else {
          result = Text(
            text,
            style: TextStyle(color: Colors.grey.shade600),
          );
        }
        return result;
      },
    );
  }
}
