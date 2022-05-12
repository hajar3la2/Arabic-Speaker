import'package:flutter/material.dart';

class Drawerc extends StatefulWidget {
  const Drawerc({ Key? key }) : super(key: key);

  @override
  State<Drawerc> createState() => _DrawercState();
}

class _DrawercState extends State<Drawerc> {
 int radiovalue=0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
        Radio(value: 1, groupValue: radiovalue, onChanged: (v){
          setState((){
             radiovalue=v as int;
          });
        }),
      ],)
    );
  }
}