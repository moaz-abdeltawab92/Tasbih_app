import 'package:flutter/material.dart';
import 'package:tasbeeh_app/hompage.dart';

void main() {
  runApp(TasbihApp());
}

class TasbihApp extends StatelessWidget {
  const TasbihApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
