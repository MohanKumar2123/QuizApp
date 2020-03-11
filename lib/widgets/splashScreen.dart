import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizapp/widgets/quizpage.dart';


class splashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _splashScreen();
  }

}

class _splashScreen extends State<splashScreen>{

@override
void initState(){
  super.initState();
  Timer(Duration(seconds: 3), (){
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => homepage()),
      (Route<dynamic> route) =>false);
  });
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageUi(),            
      ),
    );
    
  }

PageUi() {

return Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("OmniCuris", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2, height: 2, color: Colors.red),),
      Text("QuizApp", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.5, height: 2, color: Colors.black),),
      Text("Start your Carrier", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 2, height: 1.5, color: Colors.grey),),
    ],
  )      
);
}



}