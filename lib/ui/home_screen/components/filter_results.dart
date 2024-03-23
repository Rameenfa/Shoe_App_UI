import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterResults extends StatelessWidget {
  const FilterResults({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3, 
                    blurRadius: 5, 
                    offset: Offset(0, 3), 
                  ),
                ]
              ),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: '   Search your shoes',
                  hintStyle: TextStyle(color: Color(0xFFC0C0C0),
                  fontSize: 15
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFFFB301),
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset('assets/images/filter.svg',
            fit: BoxFit.none,
            height: 20,
            width: 20,
            ),
          ),
        ),
      ],
    );
  }
}