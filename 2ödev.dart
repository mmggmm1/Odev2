import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BChange(),
    );
  }
}

class BChange extends StatefulWidget {
  const BChange({super.key});

  @override
  _BChangeState createState() => _BChangeState();
}

class _BChangeState extends State<BChange> {
  bool blue = true;

  void changeBG() {
    setState(() {
      blue = !blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue ? Colors.blue.shade900 : Colors.yellow,
      body: Center(
        child: ElevatedButton(
          onPressed: changeBG,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            backgroundColor: Colors.white,
            foregroundColor: blue ? Colors.blue.shade900 : Colors.yellow,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text("Rengi Değiştir"),
        ),
      ),
    );
  }
}
