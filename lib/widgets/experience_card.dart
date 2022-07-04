import 'package:flutter/material.dart';

class CardExperience extends StatefulWidget {
  const CardExperience({Key? key}) : super(key: key);

  @override
  _CardExperienceState createState() => _CardExperienceState();
}

class _CardExperienceState extends State<CardExperience> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xffddd3e5),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(40),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(child: Container(
                  margin: EdgeInsets.only(right: (MediaQuery.of(context).size.width) / 7,left: (MediaQuery.of(context).size.width) / 7,),
                  child: Column(
                    children: [
                      Text("Experience",  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffc28bff),
                        fontSize: 30,
                        color: Colors.black,),),
                      SizedBox(height: 40,),
                      Text("One of my first and most consistents clients have been Mandados. A in-city delivery company. The first job that I personally was incharge to make was a "
                          "One of my first and most consistents clients have been Mandados. A in-city delivery company. The first job that I personally was incharge to make was a",  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,),),
                    ],
                  ),
                )),
                Positioned(
                  top: 20,
                    right: 0,
                    child:Transform.rotate(child: Image.network('https://picsum.photos/200/300'),angle: 0.2,)),
                Positioned(
                    top: 320,
                    left: 0,
                    child:Transform.rotate(child: Image.network('https://picsum.photos/200/300'),angle: -0.2,))
              ],


            )
          ),
        ],
      ),
    );
  }
}
