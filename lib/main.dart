import 'package:flutter/material.dart';

// Titik masuk program: Dart selalu memulai dari fungsi main().
void main() {
  runApp(const HelloApp());
}

// Widget akar aplikasi. StatelessWidget = widget tanpa state yang berubah.
class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 1 PM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 13, 230, 193),
        ),
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Environment & Aplikasi Hello World Flutter'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(size: 96),
            SizedBox(height: 24),
            Text(
              'Hello, World!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Nama  : Muhammad Rafli Wijaya'),
            Text('NIM   : 4243250017'),
            Text('Kelas : Ilmu Komputer D 2024'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 1, 1, 1),
                  size: 25.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(Icons.home, color: Color.fromARGB(255, 8, 8, 8), size: 25.0),
                Icon(Icons.account_circle, color: Color.fromARGB(255, 12, 12, 12), size: 25.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
