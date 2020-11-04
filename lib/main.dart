import 'package:flutter/material.dart';

import './homepage.dart';

void main() {
  runApp(InstacloneApp());
}

class InstacloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaClone',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
