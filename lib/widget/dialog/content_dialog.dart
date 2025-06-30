import 'package:flutter/material.dart';

class ContentDialog extends StatelessWidget {
  final Widget? content;
  final Color? bgColorTitle;
  final bool noColorTitle;
  final String? title;
  final EdgeInsets? contentPadding;
  final List<Widget>? actions;
  final EdgeInsets? insetPadding;
  final EdgeInsets? titlePadding;
  final bool withClose;
  final double radius;

  const ContentDialog({
    super.key,
    this.content,
    this.bgColorTitle,
    this.noColorTitle = false,
    this.title,
    this.contentPadding,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.withClose = true,
    this.radius = 24,
  });

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: contentPadding ?? const EdgeInsets.all(24),
      actions: actions,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      insetPadding:
          insetPadding ??
          const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      titlePadding: titlePadding ?? const EdgeInsets.all(0),
      title: Container(
        padding: const EdgeInsets.fromLTRB(24, 2, 8, 2),
        decoration: BoxDecoration(
          color: noColorTitle ? Colors.white : (bgColorTitle),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screen.width - 115,
              child: Text(
                title ?? '',
                style: TextStyle(
                  color: noColorTitle ? Colors.black : Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            withClose
                ? IconButton(
                  icon: const Icon(Icons.close),
                  color: noColorTitle ? Colors.black : Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
                : const SizedBox(height: 45),
          ],
        ),
      ),
      content: SizedBox(width: double.maxFinite, child: content),
    );
  }
}
