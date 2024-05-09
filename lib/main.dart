import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signo Zodiacal del Amor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ZodiacLoveScreen(),
    );
  }
}

class ZodiacLoveScreen extends StatefulWidget {
  @override
  _ZodiacLoveScreenState createState() => _ZodiacLoveScreenState();
}

class _ZodiacLoveScreenState extends State<ZodiacLoveScreen> {
  final TextEditingController _nameController = TextEditingController();
  String _zodiacSign = '';

  void _generateZodiacSign() {
    final String name = _nameController.text.trim();
    final List<String> zodiacSigns = [
      'Aries',
      'Tauro',
      'Géminis',
      'Cáncer',
      'Leo',
      'Virgo',
      'Libra',
      'Escorpio',
      'Sagitario',
      'Capricornio',
      'Acuario',
      'Piscis',
    ];

    final Random random = Random(name.hashCode);
    final int randomNumber = random.nextInt(zodiacSigns.length);
    setState(() {
      _zodiacSign = zodiacSigns[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signo Zodiacal del Amor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Ingresa tu nombre',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _generateZodiacSign();
              },
              child: Text('Descubrir tu signo zodiacal del amor'),
            ),
            SizedBox(height: 20.0),
            _zodiacSign.isNotEmpty
                ? Text(
                    'Tu signo zodiacal del amor es: $_zodiacSign',
                    style: TextStyle(fontSize: 20.0),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
