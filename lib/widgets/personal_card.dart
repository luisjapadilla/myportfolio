import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class CardPersonal extends StatefulWidget {
  const CardPersonal({Key? key}) : super(key: key);

  @override
  _CardPersonalState createState() => _CardPersonalState();
}

class _CardPersonalState extends State<CardPersonal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: new EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children:  [
                      Text("Hello over there! I'm",  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        color: Colors.black,),),
                      SizedBox(height: 15,),
                  SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Luis Jesus'),
                          TypewriterAnimatedText('a Programmer'),
                          TypewriterAnimatedText('a Writter'),
                          TypewriterAnimatedText('a Gamer'),
                          TypewriterAnimatedText('a Tester'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                      SizedBox(height: 15,),
                      Text("I was born and raised in Venezuela. In my teenage years, I had the opportunity to move to the United States which lead to many tests, one of them which was to learn the language. Afterward, I came to Colombia to study my passion since very little, Software development. This thankfully happened in Bogota. Then I moved once again, this time to Medellin in pursuit of new opportunities in my career and personal life.",maxLines: 3,  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.black,),),
                      SizedBox(height: 5,),
                      Text("Currently, I'm working as a bilingual software tester. My job is to be analytical and have good planning so everything can come out perfect in the end",maxLines: 3,  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.black,),),
                      SizedBox(height: 5,),
                      Text("I love my job and the people around me. I always try to be a force of good wherever I go, since good vibes will always bring good things.",maxLines: 3,  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.black,),),
                      SizedBox(height: 5,),
                      Text("Although it hasn't been easy I still look forward to what life has in store for me.",maxLines: 3,  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.black,),),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        html.window.open('https://github.com/luisjapadilla',"_blank");
                      },
                      
                      //This prop for beautiful expressions
                       label: Text("Github"),
                      // This child can be everything. I want to choose a beautiful Text Widget
                      style: ElevatedButton.styleFrom(
                        textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        minimumSize: Size(200, 70),
                        primary: Color(0xffe6cdf1),
                        onPrimary: Color(0xff000000),
                        onSurface: Color(0xff333),
                        shadowColor: Colors.grey,
                        //shadow prop is a very nice prop for every button or card widgets.
                        elevation: 5,
                        // we can set elevation of this beautiful button
                        side: const BorderSide(
                            color: Color(0xfff5f5f5), //change border color
                            width: 2, //change border width
                            style: BorderStyle.solid),
                        // change border side of this beautiful button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), //change border radius of this beautiful button thanks to BorderRadius.circular function
                        ),
                        tapTargetSize: MaterialTapTargetSize.padded,
                      ), icon: Icon(          Icons.arrow_back,
                    ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        html.window.open('https://www.linkedin.com/in/luisjapadilla/',"_blank");
                      },
                      //This prop for beautiful expressions
                      child: Text("Linkedin"),
                      // This child can be everything. I want to choose a beautiful Text Widget
                      style: ElevatedButton.styleFrom(
                        textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        minimumSize: Size(200, 70),
                        primary: Color(0xff6e5494),
                        onPrimary: Color(0xfff5f5f5),
                        onSurface: Color(0xff333),
                        shadowColor: Colors.grey,
                        //shadow prop is a very nice prop for every button or card widgets.
                        elevation: 5,
                        // we can set elevation of this beautiful button
                        side: const BorderSide(
                            color: Color(0xfff5f5f5), //change border color
                            width: 2, //change border width
                            style: BorderStyle.solid),
                        // change border side of this beautiful button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), //change border radius of this beautiful button thanks to BorderRadius.circular function
                        ),
                        tapTargetSize: MaterialTapTargetSize.padded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width)/3,
          )
        ],
      ),
    );
  }
}
