import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';

class Wideet extends StatelessWidget {
  const Wideet({super.key});

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      width: MediaQuery.of(context).size.width*.8,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Agne',
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText("Muhammad Farhan Lohar"),
            TypewriterAnimatedText('Flutter developer '),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );;
  }
}
