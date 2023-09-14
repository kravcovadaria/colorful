import 'package:flutter/material.dart';
import 'package:test_color/color_x.dart';
import 'package:test_color/colorful.dart';
import 'package:test_color/main.dart';

/// Main and only page of the application
class HomePage extends StatelessWidget {
  /// Default constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Colorful(
          builder: (color) => Text(
            hello,
            style: TextStyle(color: color.contrastBlackOrWhite),
          ),
        ),
      ),
    );
  }
}
