import 'package:flutter/material.dart';
import 'package:shoes_app/shoes_app.dart';

class ItemsList extends StatefulWidget {
  final String text1;
  final String text2;
  final Product? products;

  const ItemsList({Key? key, required this.text1, required this.text2, this.products}) : super(key: key);

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 150,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 200,
                      height: 30,
                      child: Text(
                        widget.text1,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    width: 100,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align icon to the end of the container
                      children: [
                        Text(
                          widget.text2,
                          style: TextStyle(color: Color(0xFFFFB301), fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_right, color: Color(0xFFFFB301),
                          size: 20,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      Product product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => DetailsScreen(product: product),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 238, 238),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: 100,
                                  height: 80,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        child: Text(
                                          product.brand,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                          ),
                                        )),
                                        SizedBox(height: 5,),
                                      SizedBox(
                                        height: 20,
                                        child: Text(
                                          product.title,
                                          style: TextStyle(
                                            fontSize: 12
                                          ),
                                        )),
                                        SizedBox(height: 5,),
                                      GestureDetector(
                                        onTap: () {
                                          
                                        },
                                        child: Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFB301),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 40,
                                                  child: Text('Add to',
                                                  style: TextStyle(color: Colors.white,
                                                  fontSize: 12
                                                  ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/images/add_to_cart.png'),
                                                      fit: BoxFit.contain
                                                      )
                                                  ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(product.image),
                                      fit: BoxFit.contain
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
