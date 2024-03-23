import 'package:flutter/material.dart';

class ExploreNowImage extends StatelessWidget {
  const ExploreNowImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        alignment: Alignment.topLeft,
        children : [
          Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/slider_1.png'),
              fit: BoxFit.cover
              ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 130,
                height: 80,
                child: Text(
                  'A Workhorse build to help power you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/explore_now.png'),
                  fit: BoxFit.contain,
                  matchTextDirection: true
                  )
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}