import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    Key? key,
    required this.child,
    this.left = 16,
    this.right = 16,
    this.top = 16,
    this.bottom = 16,
  }) : super(key: key);
  final Widget child;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left!,
        right: right!,
        top: top!,
        bottom: bottom!,
      ),
      child: child,
    );
  }
}
