import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
