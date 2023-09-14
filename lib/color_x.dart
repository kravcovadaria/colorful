import 'package:flutter/material.dart';

/// Extention on [Color] class
extension ColorX on Color {
  static const _threshold = 0.5;

  /// Provides contrast color
  Color get contrastBlackOrWhite =>
      computeLuminance() > _threshold ? Colors.black : Colors.white;
}
