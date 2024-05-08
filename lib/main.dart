import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Espectro LGBT+ por nombre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LGBTSpectrumScreen(),
    );
  }
}

class LGBTSpectrumScreen extends StatefulWidget {
  @override
  _LGBTSpectrumScreenState createState() => _LGBTSpectrumScreenState();
}

class _LGBTSpectrumScreenState extends State<LGBTSpectrumScreen> {
  final TextEditingController _nameController = TextEditingController();
  String _spectrum = '';

  void _generateSpectrum() {
    final String name = _nameController.text.trim();
    final List<String> spectrums = [
      'Gay',
      'Lesbiana',
      'Bisexual',
      'Transgénero',
      'No binario',
      'Queer',
      // Agrega más espectros aquí
    ];

    final Random random = Random(name.hashCode);
    final int randomNumber = random.nextInt(spectrums.length);
    setState(() {
      _spectrum = spectrums[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espectro LGBT+ por nombre'),
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
                _generateSpectrum();
              },
              child: Text('Generar espectro LGBT+'),
            ),
            SizedBox(height: 20.0),
            _spectrum.isNotEmpty
                ? Text(
                    'Tu espectro LGBT+ es: $_spectrum',
                    style: TextStyle(fontSize: 20.0),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
