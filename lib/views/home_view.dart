import 'package:flutter/material.dart';

import '../widgets/personal_card.dart';

class Homeview extends StatefulWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  _HomeviewState createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        Expanded(
            flex: 1,
            child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: [
                          Color(0xff43025a),
                      Color(0xff43025a),
                          Color(0xff43025a),                    ])),
                child: Column(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/images/NyctobitsFinal.png'),
                      )
                    ),
                    Expanded(
                      child:     Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child:     Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child:     Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child:     Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ))),
        Expanded(flex: 9,child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    SizedBox(height: 100,),
                    const CardPersonal(),
                    const CardPersonal(),
                    const CardPersonal(),
                    const CardPersonal(),
                  ],
                ),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
