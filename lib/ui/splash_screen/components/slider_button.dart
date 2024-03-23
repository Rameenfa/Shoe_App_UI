import 'package:flutter/material.dart';
import 'package:shoes_app/shoes_app.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliderButton extends StatefulWidget {
  final String text;
  final Function press;
  const SliderButton({super.key, required this.text, required this.press});

  @override
  State<SliderButton> createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SlideAction(
        innerColor: Color(0xFFFFB301),
        outerColor: Colors.grey.shade200,
        elevation: 0,
        height: 60,
        sliderButtonIconSize: 5,
        sliderRotate: false,
        sliderButtonIcon: Image.asset('assets/images/arrow1.png',
        width: 20,
        height: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/arrow.png')),
            SizedBox(width: 15,),
            Text(widget.text,
            style: TextStyle(color: Colors.grey.shade500),
            )
          ],
        ),
        onSubmit: () => widget.press(),
      ),
    );
  }
}