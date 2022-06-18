import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.models.dart';

class TaskItemWidget extends StatefulWidget {
  TaskModel taskModel;
  TaskItemWidget({Key? key, required this.taskModel}) : super(key: key);

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0)
      ),
      child:Column(
        children: [
          Text(
            widget.taskModel.titre,
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 16.0,
              fontWeight: FontWeight.w600),
          ),

          Text(
            widget.taskModel.description,
            style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      )
    );
  }
}

