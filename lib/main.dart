import 'package:flutter/material.dart';
import 'package:hello/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

const List<Color> bgColors = [
  Color.fromARGB(255, 43, 6, 107),
  Color.fromARGB(255, 113, 54, 214),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter!!'),
        ),
        body: const GradientContainer(bgColors),
      ),
    );
  }
}
