import 'package:flutter/material.dart';
import 'package:myportfolio/widgets/experience_card.dart';

import '../widgets/personal_card.dart';

class Homeview extends StatefulWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  _HomeviewState createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {

  final _scrollController = ScrollController();
  late String _index;

  void _scrollToIndex(index) {
    _scrollController.animateTo((MediaQuery.of(context).size.height) * index,
        duration: const Duration(seconds: 1), curve: Curves.easeIn);
  }
  void _changeIndex() {
    if(_scrollController.offset < MediaQuery.of(context).size.height/2){
      _index = "0";
    }
    if(_scrollController.offset > MediaQuery.of(context).size.height/2){
      _index = "1";
    }
    if(_scrollController.offset > MediaQuery.of(context).size.height*1.5){
      _index = "2";
    }
    if(_scrollController.offset > MediaQuery.of(context).size.height*2.5){
      _index = "3";
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    _index = "0";
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: double.infinity,
            width: (MediaQuery.of(context).size.width) / 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: [
                  Color(0xff050000),
                  Color(0xff470661),
                  Color(0xff43025a),
                ])),
            child: Column(
              children: [
                SizedBox(height: 100,),
               Image(
                  image: AssetImage('assets/images/NyctobitsFinal.png'),
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: _index == "0" ? Colors.deepOrange : Colors.white,
                      size: 40,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Text(_index.toString(),  style: TextStyle(
                      fontFamily: 'Ambit',
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      color: Colors.white,),),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      Text("about",  style: TextStyle(
                        fontFamily: 'Ambit',
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        color: Colors.white,),),
                    ],
                  ),
                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Text("about",  style: TextStyle(
                      fontFamily: 'Ambit',
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      color: Colors.white,),),
                  ],
                ),
                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _scrollToIndex(2);

                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Text("about",  style: TextStyle(
                      fontFamily: 'Ambit',
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      color: Colors.white,),),
                  ],
                ),
                SizedBox(height: 50,),

              ],
            )),
        Expanded(
            child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topRight,
              child: Image(
                image: AssetImage('assets/images/rohaan.jpg'),
              ),
            ),
            NotificationListener <ScrollNotification>(
              onNotification: (_scrollController) {
                if (_scrollController is ScrollStartNotification) {

                } else if (_scrollController is ScrollUpdateNotification) {
                  setState(() {
                    _changeIndex();
                  });
                } else if (_scrollController is ScrollEndNotification) {

                }
                return true;
              },
              child: CustomScrollView(
                controller: _scrollController,
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(0.0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        <Widget>[
                          const CardPersonal(),
                          const CardExperience(),
                          const CardExperience(),
                          const CardExperience(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
