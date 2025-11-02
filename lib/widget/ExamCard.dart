

import 'package:flutter/material.dart';
import 'package:mis_lab_221277/model/Exam.dart';


class ExamCard extends StatelessWidget {
  final Exam exam;
  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context, "/details",
          arguments: exam,
        );
      },

      child: Card(
        color: exam.dateTime.isBefore(DateTime.now()) ? Colors.green : Colors.red ,

        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.red.shade300, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(
            children:[

              Text(exam.name, style: TextStyle(fontSize: 28)),
              Divider(color: Colors.black,),
              Row(
                children: [

                  Icon(Icons.event),
                  SizedBox(width: 3,),
                  Text("${exam.dateTime.day.toString().padLeft(2,"0")}."
                      "${exam.dateTime.month.toString().padLeft(2,"0")}."
                      "${exam.dateTime.year.toString()}", style: TextStyle(fontSize: 15)
                  ),
                ],
              ),
              Row(
                children: [

                  Icon(Icons.access_time),
                  SizedBox(width: 4,),
                  Text("${exam.dateTime.hour.toString().padLeft(2,"0")}."
                      "${exam.dateTime.minute.toString().padLeft(2,"0")}", style: TextStyle(fontSize: 15)
                  ),
                ],
              ),
              Divider(color: Colors.black,),
              Row(
                children: [
                  Icon(Icons.room),
                  SizedBox(width: 4,),
                  Expanded(
                      child: Text("Lab :${exam.prostori.toString().replaceAll("[", "").replaceAll("]", "")}",
                        softWrap: true,
                        style: TextStyle(fontSize: 12),
                      ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
