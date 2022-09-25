import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CardWork extends StatefulWidget {
  const CardWork({Key? key}) : super(key: key);

  @override
  _CardWorkState createState() => _CardWorkState();
}

class _CardWorkState extends State<CardWork> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xffddd3e5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/lily_running.gif",
              height: 125.0,
              width: 125.0,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Red Rose',
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('Lily running'),
                  TypewriterAnimatedText('Under Construction ⚠'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
