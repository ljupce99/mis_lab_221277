import 'package:flutter/material.dart';
import 'package:mis_lab_221277/screens/DetailsExam.dart';
import 'package:mis_lab_221277/screens/HomeExam.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити - 221277',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(title: 'Распоред за испити - 221277'),
        "/details": (context) => const DetailsPage(),
      },
    );

  }
}


