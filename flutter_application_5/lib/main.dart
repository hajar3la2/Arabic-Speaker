import 'package:flutter/material.dart';
import 'package:flutter_application_5/drawer.dart';

import 'favorite.dart';
import 'library.dart';
import 'speaking.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),

  )
  );
}

class MyApp extends StatefulWidget {
   
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageindex=0;
  List<Widget> screens=[Speaking(), Library(), Favorite()];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: Drawer(
          child: Drawerc(),
        ),
        //0xffeae9ef
        //0xff339870
        backgroundColor: Color(0xffeae9ef),
        appBar: AppBar(
          backgroundColor: Color(0xff339870),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageindex,
          onTap:(index){
            setState(() {
              pageindex=index;
            print(index);
            });
            

          },
          type: BottomNavigationBarType.shifting, 
          selectedItemColor: Color(0xff339870),
          unselectedItemColor: Colors.grey, 
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
        items:[
            BottomNavigationBarItem(icon: Icon(Icons.wechat, ),label:"التحدث", backgroundColor: Colors.white, ),
            BottomNavigationBarItem(icon: Icon(Icons.library_add_check),label:"المكتبات",backgroundColor: Colors.white,),
            BottomNavigationBarItem(icon: Icon(Icons.star),label:"المفضلة",backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label:"تنبيه",backgroundColor: Colors.white),
          ]
        ),
        body: IndexedStack(
          children: screens,
          index:pageindex,
        ),
        
      ),
    );
  }
}