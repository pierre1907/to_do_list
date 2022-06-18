import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.models.dart';
import 'package:to_do_list/services/task.services.dart';

import '../widgets/shared/widget.dart';
import '../widgets/task/task.item.widget.dart';

class TaskPage extends StatefulWidget {
  TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    List <TaskModel> tasks=Services.getTasks();
    return Scaffold(
      appBar: appBar(title: "Task page"),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          width: double.infinity,
          //padding: ,
          color: Color(0xFFF6F6F6),
          //height: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 34.0),
                child: Image(image: AssetImage("assets/images/logo.jpg"))),
              Expanded(child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context,index){
                    return TaskItemWidget(taskModel: tasks[index]);
                },
              ))
          ],
          ),
        ),
      ),

    );
  }
}



