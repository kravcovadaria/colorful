import 'package:flutter/material.dart';
import 'package:test_color/home_page.dart';
import 'package:test_color/main.dart';

/// Main screen of the application
class App extends StatelessWidget {
  /// Default constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: hello,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
