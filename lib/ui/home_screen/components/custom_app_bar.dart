import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar CustomAppBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Container(
        width: 40,
        height: 40,
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 40,
            width: 40,
            child: Image.asset('assets/images/profile_.png',
            ),
          ),
        )
      ],
    );
  }
