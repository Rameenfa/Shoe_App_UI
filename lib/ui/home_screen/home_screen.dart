import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shoes_app/shoes_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            FilterResults(searchController: searchController),
            SizedBox(height: 20,),
            ExploreNowImage(),
            SizedBox(height: 20,),
            LogoList(),
            SizedBox(height: 20,),
            ItemsList(
              text1: 'Newest Nike Shoes', 
              text2: 'See More'
              ),
            SizedBox(height: 10,),
            ItemsList(
              text1: 'Popular', 
              text2: 'See More'
              )
          ],
        ),
      ),
    );
  }
}