import 'package:flutter/material.dart';
import 'package:shoes_app/shoes_app.dart';

class DetailsScreen extends StatefulWidget {
  final Product? product;
  const DetailsScreen({super.key, this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 20,),
              ProductBrandAndName(widget: widget),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                  width: double.infinity,
                  height: 20,
                  child: Text(
                    widget.product!.customizedBy,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFC0C0C0)
                    ),
                    ),
                    ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 40,),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFB301),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), 
                          bottomLeft: Radius.circular(10)
                          )
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.product!.image),
                            fit: BoxFit.cover
                            )
                        ),
                      )
                    ],
                  ),
                ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 30,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Material: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16, 
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              TextSpan(
                                text: 'Textile',
                                style: TextStyle(
                                  color: Color(0xFFC0C0C0),
                                  fontSize: 16
                                )
                              ),
                            ]
                          )
                          ),
                      ),
                      SizedBox(width: 120,),
                      Container(
                        width: 50,
                        height: 50,
                        child: Text(
                          '\$${widget.product!.price}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  child: Text(
                    'Color shown: White/Total Orange/Purple',
                    style: TextStyle(
                      color: Color(0xFFC0C0C0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Text(
                            'Size',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFB301),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            '36',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F1F1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            '37',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F1F1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            '38',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F1F1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            '39',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F1F1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            '40',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: Text(
                          'Free Delivery with your Nike Membership',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.black)
                          ),
                          onPressed: null, 
                          child: Center(
                            child: Text(
                              'Membership',
                                style: TextStyle(color: Colors.white),
                                ),
                          )
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SliderButton(
                text: 'Slide to buy',
                press: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrderPlaced(),)
            );
                },
              )
            ],
          ),
        ),
    );
  }
}