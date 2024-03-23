import 'package:flutter/material.dart';
import 'package:shoes_app/shoes_app.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFFFB301),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'Order has been placed',
                    style: TextStyle(
                      fontSize: 22
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}