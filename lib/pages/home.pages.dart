import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/shared/menu.widget.dart';

import '../widgets/shared/widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Home page"),
      drawer: MenuWidget(),
      body: Container(),
      //bottomNavigationBar: BottomNavigationBar(
      //  items: [
      //  ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: ((){}),
      ),
    );
  }
}