import 'package:flutter/material.dart';
import 'package:shoes_app/shoes_app.dart';

class ProductBrandAndName extends StatelessWidget {
  const ProductBrandAndName({
    super.key,
    required this.widget,
  });

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 30,
        child: Text(
          '${widget.product!.brand} ${widget.product!.title}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          ),
    );
  }
}