import 'package:flutter/material.dart';
import 'package:test_muatmuat/widget/button/button_icon_text.dart';

class ButtonImagePicker extends StatelessWidget {
  final EdgeInsets? padding;
  final String? labelCamera;
  final String? labelGallery;
  final VoidCallback? onTapCamera;
  final VoidCallback? onTapGallery;
  final MainAxisAlignment? mainAxisAlignment;
  final double? spacing;

  const ButtonImagePicker({
    super.key,
    this.padding,
    this.labelCamera,
    this.labelGallery,
    this.onTapCamera,
    this.onTapGallery,
    this.mainAxisAlignment,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: padding ?? EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Row(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: [
              // ButtonIconText(
              //   icon: SvgPicture.asset(ResAssets.icCameraSvg),
              //   label: labelCamera ?? 'Camera',
              //   onTap: onTapCamera,
              // ),
              // SizedBox(width: spacing ?? 16),
              // ButtonIconText(
              //   icon: SvgPicture.asset(ResAssets.icGallerySvg),
              //   label: labelGallery ?? 'Gallery',
              //   onTap: onTapGallery,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
