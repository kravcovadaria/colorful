import 'dart:math';

import 'package:flutter/material.dart';

/// Widget that provides random color background for [builder] content
/// On tap color changes to another random color
class Colorful extends StatefulWidget {
  /// Default constructor
  const Colorful({required this.builder, super.key});

  /// Builder function that provides color of the background
  final Widget Function(Color) builder;

  @override
  State<StatefulWidget> createState() => ColorfulState();
}

/// State of [Colorful] widget
class ColorfulState extends State<Colorful> {
  /// Current background color
  Color curColor = Colors.white;

  Color _generateColor() {
    final random = Random();
    const maxVal = 256;

    return Color.fromRGBO(
      random.nextInt(maxVal),
      random.nextInt(maxVal),
      random.nextInt(maxVal),
      1,
    );
  }

  @override
  void initState() {
    super.initState();
    curColor = _generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        setState(() {
          curColor = _generateColor();
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(color: curColor),
        curve: Curves.easeInOut,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: widget.builder(curColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
