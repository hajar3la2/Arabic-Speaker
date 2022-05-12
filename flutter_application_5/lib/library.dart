import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Library extends StatelessWidget {
  const Library({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(alignment: Alignment.center, child: Text("library page")),
    
    );
  }
}