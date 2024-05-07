import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_time/view/scheduled_listpage.dart';

import 'custom_tile.dart';

void main() {
  runApp(MaterialApp(home: WorkHomePage()));
}

class WorkHomePage extends StatefulWidget {
  const WorkHomePage({Key? key});

  @override
  State<WorkHomePage> createState() => _WorkHomePageState();
}

class _WorkHomePageState extends State<WorkHomePage> {
  List<String> days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Schedule Working time"),
      ),
      body: Container(
        color: Colors.cyan,
        child: ListView.builder(
          itemCount: days.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ListTile(
                leading: Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                ),
                title: Row(
                  children: [
                    Text(days[index]),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan,
                        ),
                        child: Text("Morning"),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan,
                        ),
                        child: Text("Afternoon"),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan,
                        ),
                        child: Text("Night"),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      // floatingActionButton: Container(
      //   width: 100,
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.cyanAccent,
      //     onPressed: (){
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=> MySchedule()));
      //     },
      //     child: Text("Schedule",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      //   ),
      // ),
    );
  }
}
