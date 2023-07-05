import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.pink[200]!, Colors.pink[900]!),
      ),
    ),
  );
}
