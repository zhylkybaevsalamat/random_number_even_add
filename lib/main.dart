import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  String text = 'Even Number';

  void generateRandom() {
    Random random = Random();
    setState(() {
      number = random.nextInt(100);
      if (number % 2 == 0) {
        text = 'Even Number';
      } else {
        text = 'Odd Number';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Random Number'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$number',
            style: TextStyle(fontSize: 70),
          ),
          ElevatedButton(
            onPressed: () {
              generateRandom();
            },
            child: const Text('Generate Random'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(text),
        ]),
      ),
    );
  }
}
