import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_color/app.dart';

/// Application title
const hello = 'Hello there';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const App());
}
