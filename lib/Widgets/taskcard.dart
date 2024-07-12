import 'package:batch_two_todo/Screen/editTask.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  List<String> tasks;
  final int index;
  TaskCard({super.key, required this.tasks, required this.index});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(5)),


        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "${widget.tasks[widget.index]}",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: ()async{
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EditTaskScreen(TaskList: widget.tasks,index: widget.index,),
                  ));

                  setState(() {

                  });
                },
                child: Icon(
                  Icons.edit_outlined,
                  color: Colors.amberAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
