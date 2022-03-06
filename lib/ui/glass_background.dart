import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBackground extends StatelessWidget {
  final Widget childWidg;
  final double verticalalPadding;
  final double horizonalPadding;
  final double opacity;
  const GlassBackground(
      {Key? key,
      required this.childWidg,
      required this.horizonalPadding,
      required this.verticalalPadding,
      required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizonalPadding, vertical: verticalalPadding),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white60,
              width: 0.3,
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withOpacity(opacity),
          ),
          child: childWidg,
        ),
      ),
    );
  }
}
