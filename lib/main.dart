import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nombres LGBT+',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LGBTNamesScreen(),
    );
  }
}

class LGBTNamesScreen extends StatefulWidget {
  @override
  _LGBTNamesScreenState createState() => _LGBTNamesScreenState();
}

class _LGBTNamesScreenState extends State<LGBTNamesScreen> {
  final List<String> lgbtNames = [
    'Gay',
    'Lesbiana',
    'Bisexual',
    'Transgénero',
    'No binario',
    'Queer',
    // Agrega más nombres aquí
  ];

  String _randomName = '';

  void _generateRandomName() {
    final Random random = Random();
    final int randomNumber = random.nextInt(lgbtNames.length);
    setState(() {
      _randomName = lgbtNames[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombres LGBT+'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
   
