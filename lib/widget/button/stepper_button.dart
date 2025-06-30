import 'package:flutter/material.dart';

class StepperButton extends StatelessWidget {
  final double? height;
  final double? radius;
  final VoidCallback? onTapPrev;
  final VoidCallback? onTapNext;
  final bool visiblePrev;
  final bool visibleNext;
  final Widget? childPrev;
  final String? labelPrev;
  final Widget? childNext;
  final String? labelNext;
  final Color? colorPrev;
  final Color? colorNext;
  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsets? padding;

  const StepperButton({
    super.key,
    this.height,
    this.radius,
    this.onTapPrev,
    this.onTapNext,
    this.visiblePrev = true,
    this.visibleNext = true,
    this.childPrev,
    this.childNext,
    this.colorPrev,
    this.colorNext,
    this.labelPrev,
    this.labelNext,
    this.mainAxisAlignment,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1))
      // ),
      // padding: padding ?? EdgeInsets.symmetric(vertical: 16),
      padding: padding,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.end,
        children: [
          Visibility(
            visible: visiblePrev,
            child: SizedBox(
              height: height,
              child: OutlinedButton(
                onPressed: onTapPrev,
                child:
                    childPrev ??
                    Text(
                      labelPrev ?? "Kembali",
                      style: TextStyle(
                        // color: Theme.of(context).colorScheme.scrim,
                        color: Colors.grey.shade700,
                      ),
                    ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Visibility(
            visible: visibleNext,
            child: SizedBox(
              height: height,
              child: FilledButton(
                onPressed: onTapNext,
                child: childNext ?? Text(labelNext ?? "Selanjutnya"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StepperButtonExpand extends StatelessWidget {
  final double? height;
  final double? radius;
  final VoidCallback? onTapPrev;
  final VoidCallback? onTapNext;
  final bool visiblePrev;
  final bool visibleNext;
  final Widget? childPrev;
  final String? labelPrev;
  final Widget? childNext;
  final String? labelNext;
  final Color? colorPrev;
  final Color? colorNext;
  final EdgeInsets? padding;

  const StepperButtonExpand({
    super.key,
    this.height,
    this.radius,
    this.onTapPrev,
    this.onTapNext,
    this.visiblePrev = true,
    this.visibleNext = true,
    this.childPrev,
    this.childNext,
    this.colorPrev,
    this.colorNext,
    this.labelPrev,
    this.labelNext,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1))
      // ),
      // padding: padding ?? EdgeInsets.symmetric(vertical: 16),
      padding: padding,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Visibility(
              visible: visiblePrev,
              child: SizedBox(
                height: height,
                child: OutlinedButton(
                  onPressed: onTapPrev,
                  child:
                      childPrev ??
                      Text(
                        labelPrev ?? "Kembali",
                        style: TextStyle(
                          // color: Theme.of(context).colorScheme.scrim,
                          color: Colors.grey.shade700,
                        ),
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Visibility(
              visible: visibleNext,
              child: SizedBox(
                height: height,
                child: FilledButton(
                  onPressed: onTapNext,
                  child: childNext ?? Text(labelNext ?? "Selanjutnya"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
