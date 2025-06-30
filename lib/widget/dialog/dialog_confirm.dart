import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentDialogConfirm extends StatelessWidget {
  final Color bgColorTitle;
  final String? title;
  final String? message;
  final List<Widget>? actions;
  final EdgeInsets? insetPadding;
  final EdgeInsets? titlePadding;
  final String? onNegativeText;
  final String? onPositiveText;
  final VoidCallback? onNegativeButton;
  final VoidCallback? onPositiveButton;
  final ButtonStyle? onNegativeStyle;
  final ButtonStyle? onPositiveStyle;
  final IconData? icon;
  final bool isLoading;

  const ContentDialogConfirm({
    super.key,
    required this.bgColorTitle,
    this.title,
    this.message,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.onNegativeText,
    this.onPositiveText,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeStyle,
    this.onPositiveStyle,
    this.icon,
    this.isLoading = false,
  });

  ContentDialogConfirm.info({
    super.key,
    this.title = "Confirmation",
    this.message,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeText,
    this.onPositiveText,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.isLoading = false,
    this.onNegativeStyle,
  })  : bgColorTitle = Colors.blue.shade700,
        onPositiveStyle = FilledButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.info_outline;

  ContentDialogConfirm.error({
    super.key,
    this.title = "Failed",
    this.message,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeText,
    this.onPositiveText,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.isLoading = false,
    this.onNegativeStyle,
  })  : bgColorTitle = Colors.red.shade700,
        onPositiveStyle = FilledButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.close;

  ContentDialogConfirm.success({
    super.key,
    this.title = "Success",
    this.message,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeText,
    this.onPositiveText,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.isLoading = false,
    this.onNegativeStyle,
  })  : bgColorTitle = Colors.green.shade700,
        onPositiveStyle = FilledButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.check_circle_outline;

  ContentDialogConfirm.delete({
    super.key,
    this.title = "Failed",
    this.message,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeText,
    this.onPositiveText,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.isLoading = false,
    this.onNegativeStyle,
  })  : bgColorTitle = Colors.red.shade700,
        onPositiveStyle = FilledButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            minimumSize: const Size(100, 40)),
        icon = CupertinoIcons.delete;

  ContentDialogConfirm.warning({
    super.key,
    this.title = "Warning",
    this.message,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeText,
    this.onPositiveText,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.isLoading = false,
    this.onNegativeStyle,
  })  : bgColorTitle = Colors.orange.shade700,
        onPositiveStyle = FilledButton.styleFrom(
            backgroundColor: Colors.orange.shade700,
            minimumSize: const Size(100, 40)),
        icon = Icons.warning_amber;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        OutlinedButton(
            style: onNegativeStyle ??
                OutlinedButton.styleFrom(
                  minimumSize: const Size(100, 40),
                ),
            onPressed: isLoading
                ? null
                : onNegativeButton ??
                    () {
                      Navigator.pop(context);
                    },
            child: Text(onNegativeText ?? "Cancel")),
        FilledButton.icon(
          style: onPositiveStyle,
          onPressed: isLoading ? null : onPositiveButton,
          icon: isLoading
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                  ),)
              : null,
          label: Text(
            onPositiveText ?? "Ok",
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
            title ?? "Confirmation",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 8),
          Text(
            message ?? '',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ContentDialogConfirmWithoutTitle extends StatelessWidget {
  final String? message;
  final List<Widget>? actions;
  final EdgeInsets? insetPadding;
  final EdgeInsets? titlePadding;
  final String? onNegativeText;
  final String? onPositiveText;
  final VoidCallback? onNegativeButton;
  final VoidCallback? onPositiveButton;
  final ButtonStyle? onNegativeStyle;
  final ButtonStyle? onPositiveStyle;

  const ContentDialogConfirmWithoutTitle({
    super.key,
    this.message,
    this.actions,
    this.insetPadding,
    this.titlePadding,
    this.onNegativeText,
    this.onPositiveText,
    this.onNegativeButton,
    this.onPositiveButton,
    this.onNegativeStyle,
    this.onPositiveStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        OutlinedButton(
            style: onNegativeStyle ??
                OutlinedButton.styleFrom(
                  minimumSize: const Size(100, 40),
                ),
            onPressed: onNegativeButton ??
                () {
                  Navigator.pop(context);
                },
            child: Text(onNegativeText ?? "Cancel")),
        FilledButton(
          style: onPositiveStyle,
          onPressed: onPositiveButton,
          child: Text(
            onPositiveText ?? "Ok",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message ?? '',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
