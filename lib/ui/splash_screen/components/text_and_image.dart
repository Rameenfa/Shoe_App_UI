import 'package:flutter/material.dart';

class TextAndImage extends StatelessWidget {
  const TextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
                      Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.contain
                          )
                      )
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 300,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/splash_screen_shoes.png'),
                          fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: 70,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/360.png'),
                          fit: BoxFit.contain
                          )
                      ),
                    ),
                    // SizedBox(height: 10,),
                    // Container(
                    //   alignment: Alignment.centerRight,
                    //   width: double.infinity,
                    //   height: 10,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/images/logo_orange.png'),
                    //       fit: BoxFit.contain
                    //       )
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Just do it with ',
                              style: TextStyle(color: Colors.black,
                              fontSize: 25
                              )
                            ),
                            TextSpan(
                              text: 'Nike',
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                              )
                            )
                          ]
                        )
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Get access to more tha 1000 nike shoes also another brands with %20 off',
                            style: TextStyle(
                              color: Color(0xFFC0C0C0),
                              fontSize: 13
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
      ],
    );
  }
}