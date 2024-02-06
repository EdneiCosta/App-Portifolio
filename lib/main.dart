import 'package:flutter/material.dart';
import 'package:portifolio/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      theme: ThemeData(useMaterial3: false),
    ),
  );
}