import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_app/shoes_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Expanded(
            child: SizedBox(
              height: size.height,
              child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: SvgPicture.asset(
                  'assets/images/background.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextAndImage(),
                  SizedBox(height: 10,),
                  SliderButton(
                    text: 'Slide to start shopping',
                    press: () {
                      Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomBar(),)
            );
                    },
                  )
                ],
              )
            ],
                    ),
            ),
          )
    );
  }
}