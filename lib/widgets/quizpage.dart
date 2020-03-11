import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'jsonpage.dart';

class homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return quizapp();
  }

}

class quizapp extends State<homepage>{

  List<String> images = [
    'assets/images/cpp.png',
    'assets/images/java.png',
    'assets/images/py.png',
  ];

  List<String> des = [
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Java has always been one of the best choices for Enterprise World. \n Java, being a statically typed programming language is very powerful!!",
    "Python, being a statically typed programming language is very powerful.\n If You think you have learnt it.. \nJust test yourself !!",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text("Quiz Home"),
        ),
        body: Quizapp(),
      ),
    );
  }

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      letterSpacing: 2,
                      height: 1.8,
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Quizapp() {
    return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10.0),
           children: <Widget>[
          customcard("C++", images[0], des[0]),
          customcard("Java", images[1], des[1]),
          customcard("Python", images[2], des[2]),
           ],
          
        );
  }

}