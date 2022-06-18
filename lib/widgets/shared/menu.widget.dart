
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/services/task.services.dart';

class MenuWidget extends StatefulWidget {
  MenuWidget({Key? key}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  "My Todo List", style: TextStyle(color: Colors.white,fontSize: 18),
                )),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              //shrinkWrap: true,
              itemExtent: 70,
              children: generateMenuItems(),
            ),
          )
        ],
      ),
    );
  }
  List<Card> generateMenuItems(){
    List<Card> cards = [];
    List menus = Services.getMenu();
    menus.forEach((menu) {
      cards.add(
          Card(
            margin: EdgeInsets.all(6),
            child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => menu["page"]
                  )
                );
              },
              leading: Icon(menu["icon"],color: Colors.black87,),
              title: Text(menu["title"],style: TextStyle(color: Colors.black,fontSize: 18)) ,
            ),
          )
      );
    });

    return cards;
  }
}