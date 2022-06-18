import 'package:flutter/material.dart';

AppBar appBar({required String title}){
  return AppBar(
    title: Text(title),
    actions: const[
      IconButton(
          onPressed: null,
          icon:Icon(
              Icons.logout,
              color: Colors.white
          )
      )

    ],
  );


}