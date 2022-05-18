import 'package:flutter/material.dart';

class CardPersonal extends StatefulWidget {
  const CardPersonal({Key? key}) : super(key: key);

  @override
  _CardPersonalState createState() => _CardPersonalState();
}

class _CardPersonalState extends State<CardPersonal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
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
                        fontSize: 15,
                        color: Colors.black,),),
                      Text("Luis Jesus",  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Color(0xff539c44),),),
                      Text("The problem, as described in the details that accompany that exception, is that using Flexible or Expanded means that the remaining space after laying out all the other children must be shared equally, but if the incoming vertical constraints are unbounded, there is infinite remaining space.",maxLines: 3,  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.black,),),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Doing everything");
                  },
                  //This prop for beautiful expressions
                  child: Text("Github"),
                  // This child can be everything. I want to choose a beautiful Text Widget
                  style: ElevatedButton.styleFrom(
                    textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    minimumSize: Size(200, 100),
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
          ),
          CircleAvatar(
            backgroundColor: Color(0xff539c44),
            radius: 155,
            child: const CircleAvatar(
                radius: 150,
              backgroundImage: AssetImage('assets/images/yo.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}
