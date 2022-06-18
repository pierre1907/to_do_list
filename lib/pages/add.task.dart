import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/shared/widget.dart';

class addTaskPage extends StatefulWidget {
  addTaskPage({Key? key}) : super(key: key);

  @override
  State<addTaskPage> createState() => _addTaskPageState();
}

class _addTaskPageState extends State<addTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Add Task page")
    );
  }
}