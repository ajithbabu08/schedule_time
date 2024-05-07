import 'package:flutter/material.dart';

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
  Set<String> selectedDays = {};
  Set<String> selectedShifts = {};

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
                  value: selectedDays.contains(days[index]),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value!) {
                        selectedDays.add(days[index]);
                      } else {
                        selectedDays.remove(days[index]);
                      }
                    });
                  },
                ),
                title: Row(
                  children: [
                    Text(days[index]),
                    SizedBox(width: 20),
                    _buildShiftButton("Morning"),
                    SizedBox(width: 10),
                    _buildShiftButton("Afternoon"),
                    SizedBox(width: 10),
                    _buildShiftButton("Night"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Container(
        width: 90,
        child: FloatingActionButton(
          backgroundColor: Colors.cyanAccent,
          onPressed: () {
            if (selectedDays.isNotEmpty && selectedShifts.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySchedule(selectedDays.toList(), selectedShifts.toList())),
              );
            }
            else{
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Select Schedule"),
                    content: Text("Please select day and shift."),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Text("Schedule", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      ),
    );
  }

  Widget _buildShiftButton(String shift) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedShifts.contains(shift)) {
            selectedShifts.remove(shift);
          } else {
            selectedShifts.add(shift);
          }
        });
      },
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedShifts.contains(shift) ? Colors.blue : Colors.cyan,
        ),
        child: Text(shift),
      ),
    );
  }
}

class MySchedule extends StatelessWidget {
  final List<String> selectedDays;
  final List<String> selectedShifts;

  MySchedule(this.selectedDays, this.selectedShifts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scheduled Times"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected Days: ${selectedDays.join(', ')}"),
            Text("Selected Shifts: ${selectedShifts.join(', ')}"),
          ],
        ),
      ),
    );
  }
}
