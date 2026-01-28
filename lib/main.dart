import 'package:flutter/material.dart';
import 'package:warehouse/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: [
            CardWh(pic: 'assets/JlaTku.png', labelText: 'Латки для камер круглые Ф116', countWH: 2, added: 1232,), CardWh(pic: 'assets/JlaTku.png', labelText: 'Латки для камер круглые Ф116', countWH: 2, added: 1232,), CardWh(pic: 'assets/JlaTku.png', labelText: 'Латки для камер круглые Ф116', countWH: 2, added: 1232,), CardWh(pic: 'assets/JlaTku.png', labelText: 'Латки для камер круглые Ф116', countWH: 2, added: 1232,), CardWh(pic: 'assets/JlaTku.png', labelText: 'Латки для камер круглые Ф116', countWH: 2, added: 1232,),
          ],
        ),
      ),
    );
  }
}
