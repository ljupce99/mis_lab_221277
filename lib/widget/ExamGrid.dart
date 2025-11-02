import 'package:flutter/material.dart';
import 'package:mis_lab_221277/model/Exam.dart';

import 'ExamCard.dart';


class ExamGrid extends StatefulWidget {
  final List<Exam> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  State<StatefulWidget> createState() => _ExamGridState();
}

class _ExamGridState extends State<ExamGrid> {

  @override
  Widget build(BuildContext context) {

    return GridView.builder(


        // exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 200/244
      ),
      itemCount: widget.exams.length,

      physics: BouncingScrollPhysics(),

      itemBuilder: (context, index) {
        return ExamCard(exam: widget.exams[index]);
      },
    );
  }
}
