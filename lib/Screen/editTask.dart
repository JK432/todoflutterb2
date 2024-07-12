import 'package:flutter/material.dart';

class EditTaskScreen extends StatefulWidget {
  List<String> TaskList;
  final int index;
  EditTaskScreen({super.key,required this.TaskList, required this.index});

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

// List<String> TaskList = [];

class _EditTaskScreenState extends State<EditTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black87,
        title: Text(
          "Edit Task",
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
                  controller: TextEditingController()..text =widget.TaskList[widget.index],
                  decoration: InputDecoration(hintText: "Add Task Title",),

                  onSubmitted: (value) {
                    if (value != null && value.isNotEmpty) {
                      widget.TaskList.replaceRange(widget.index, widget.index+1, [value]);
                      setState(() {
                      });
                      Navigator.of(context).pop();
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
