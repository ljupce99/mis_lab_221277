


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Exam.dart';

class DetailsPage extends StatefulWidget{
  const DetailsPage();
  @override
  State<DetailsPage> createState() => _DetailsPage();


}

class _DetailsPage extends State<DetailsPage>{

  late Exam exam;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    exam = ModalRoute.of(context)!.settings.arguments as Exam;
  }
  String formatRestTime(Duration d) {
    int days = d.inDays;
    int hours = d.inHours % 24;
    if(days<0){
      return "Испитот е поминат :${days.abs()} дена и ${hours.abs()} часа";
    }else{
      return "За: $days дена и $hours часа";
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("${exam.name}",)

      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child:  Card(

            color: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Испит:", style: TextStyle(fontSize: 22)),
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
                  ),
                  Divider(color: Colors.black,),
                  Row(
                    children: [
                      Icon(Icons.event),
                      SizedBox(width: 4,),
                      Expanded(
                        child: Text("${formatRestTime(exam.dateTime.difference(DateTime.now()))}",
                          softWrap: true,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            )
        ),
      )

    );
  }

}