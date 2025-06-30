import 'package:flutter/material.dart';

class ContentDialoginfo extends StatelessWidget {
  final Color bgColorTitle;
  final String? title;
  final String? message;
  final List<Widget>? actions;
  final EdgeInsets? insetPadding;
  final EdgeInsets? titlePadding;
  final String? buttonText;
  final VoidCallback? onTapButton;
  final ButtonStyle? buttonStyle;
  final IconData? icon;

  const ContentDialoginfo({
    super.key,
    this.message,
    required this.bgColorTitle,
    this.title,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.buttonText,
    this.onTapButton,
    this.buttonStyle,
    this.icon,
  });

  ContentDialoginfo.info({
    super.key,
    this.title = "Informasi",
    this.message,
    this.buttonText,
    this.onTapButton,
    this.insetPadding,
    this.titlePadding,
    this.actions,
  })  : bgColorTitle = Colors.blue.shade700,
        buttonStyle = FilledButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.info_outline;

  ContentDialoginfo.error({
    super.key,
    this.title = "Failed",
    this.message,
    this.buttonText,
    this.onTapButton,
    this.insetPadding,
    this.titlePadding,
    this.actions,
  })  : bgColorTitle = Colors.red.shade700,
        buttonStyle = FilledButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.close;

  ContentDialoginfo.success({
    super.key,
    this.title = "Success",
    this.message,
    this.buttonText,
    this.onTapButton,
    this.insetPadding,
    this.titlePadding,
    this.actions,
  })  : bgColorTitle = Colors.green.shade700,
        buttonStyle = FilledButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.check_circle_outline;

  ContentDialoginfo.warning({
    super.key,
    this.title = "Warning",
    this.message,
    this.buttonText,
    this.onTapButton,
    this.insetPadding,
    this.titlePadding,
    this.actions,
  })  : bgColorTitle = Colors.orange.shade700,
        buttonStyle = FilledButton.styleFrom(
            backgroundColor: Colors.orange.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.warning_amber;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        FilledButton(
          style: buttonStyle,
          onPressed: onTapButton ??
              () {
                Navigator.pop(context);
              },
          child: Text(
            buttonText ?? "Ok",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
      title: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: bgColorTitle.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon ?? Icons.info_outline,
          size: 40,
          color: bgColorTitle,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title ?? "Information",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            message ?? '',
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
