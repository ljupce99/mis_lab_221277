import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis_lab_221277/widget/ExamGrid.dart';

import '../model/Exam.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}
//za da mesa
List<String> getRandomProstorii(List<String> all) {

  final random = Random();
  int count = random.nextInt(all.length) + 1;
  List<String> shuffled = List.from(all)..shuffle(random);
  return shuffled.take(count).toList();
}

class _MyHomePageState extends State<MyHomePage> {




  final List<Exam> exams = List.generate(15, (index) {
    var prostorii=["138","200ab","200b","215","117","2","3","13","12"];
    return Exam(
      id: index,
      name: "Ispit ${index+1}",
      dateTime: DateTime(2025,11,index+1,12),
      prostori: getRandomProstorii(prostorii)
    );

  });


  // exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ExamGrid(exams: exams),
        
      ),
      bottomNavigationBar: Container(
        color: Colors.cyanAccent,
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Text("Вкупно испити : ${exams.length}",
            style: TextStyle(
                fontSize: 20
            ),
          ),
        ),
      )

    );
  }
}