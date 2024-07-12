import 'package:batch_two_todo/Screen/addTask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Widgets/taskcard.dart';

void main() {
  print("FROM MAIN");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'To Do'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  List<String> TaskList = ["Sleep","Jog"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("To Do",style: TextStyle(color: Colors.white,fontSize: 20),),
      ),


      body: Column(

        children: [
          SizedBox(height: 30,),
          Text("Todo list",style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),),
          Expanded(
            child: Center(
              child: ListView.builder(
                  itemCount: TaskList.length,
                  itemBuilder: (context, index) {
                    return InkWell(child:TaskCard(tasks:TaskList,index:index),
                      onLongPress: (){
                      TaskList.removeAt(index);print("deleted");
                      setState(() {
                      });
                    },);
                  }),
            ),
          ),
        ],

      ),
      floatingActionButton: InkWell(
          onTap:()async{
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddTaskScreen(TaskList: TaskList,),
            ));

            setState(() {

            });

      },child: Button()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}











class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,width: 50,decoration: BoxDecoration(gradient: LinearGradient(
      colors: [Colors.greenAccent, Colors.green],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
        borderRadius: BorderRadius.circular(100)

    ),
      child: Icon(Icons.emoji_emotions_outlined,size: 30,color: Colors.black87,),
    );
  }
}



