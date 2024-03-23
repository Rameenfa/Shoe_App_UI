import 'package:flutter/material.dart';

class LogoList extends StatefulWidget {
  const LogoList({super.key});

  @override
  State<LogoList> createState() => _LogoListState();
}

class _LogoListState extends State<LogoList> {

    final List<String> imageUrls = [
    'assets/images/jordon-logo.png',
    'assets/images/nike_logo.png',
    'assets/images/addidas_logo.png'
  ];

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                SizedBox(width: 40,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex--;
                    });
                  },
                  child: Container(
                    width: 20,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/arrow_back.png')
                        )
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                    height: 80,
                    width: 190,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: selectedIndex == index ? 80 : 40,
                            height: selectedIndex == index ? 80 : 40,
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(20), 
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imageUrls[index],),
                                fit: BoxFit.contain,
                                colorFilter: ColorFilter.mode(selectedIndex == index ? Colors.white : Colors.black, 
                                BlendMode.dst)
                              ),
                              color: selectedIndex == index ? Colors.black : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex++;
                    });
                  },
                  child: Container(
                    width: 20,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/arrow_forward.png')
                        )
                    ),
                  ),
                ),
              ],
            );
  }
}