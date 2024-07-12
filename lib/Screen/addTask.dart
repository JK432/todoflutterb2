import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  List<String> TaskList;
  AddTaskScreen({super.key,required this.TaskList});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

// List<String> TaskList = [];

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black87,
        title: Text(
          "Add Task",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Add Task Title"),
                  onSubmitted: (value) {
                    if (value != null && value.isNotEmpty) {
                      widget.TaskList.add(value);
                      setState(() {
                      });
                    }
          
                    print(widget.TaskList);
                  },
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
