import 'package:flutter/material.dart';
import 'rounded_border_shape.dart';

class CupertinoContainer extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget? child;
  final BorderRadius radius;
  final Decoration? decoration;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const CupertinoContainer({
    super.key, 
    this.child,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.decoration,
    this.width,
    this.height,
    this.radius = const BorderRadius.all(
      Radius.circular(
        10.0,
      ),
    ),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var shapeborder = SquircleBorder(
      radius: radius*2,
    );

    return Padding(
      padding: margin,
      child: ClipPath.shape(
        shape: shapeborder,
        child: GestureDetector(
          onTap: onPressed,
          behavior: HitTestBehavior.opaque,
          child: Container(
            decoration: decoration,
            width: width,
            height: height,
            padding: padding,
            child: child,
          )
        )
      )
    );
  }
}