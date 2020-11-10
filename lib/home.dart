import 'dart:ui';

import 'package:FoodDeliveryApp/Home-Contents/RecentOrders.dart';
import 'package:FoodDeliveryApp/Home-Contents/ShopsNearBy.dart';
import 'package:FoodDeliveryApp/Home-Contents/categories.dart';
import 'package:FoodDeliveryApp/model.dart';
import 'package:FoodDeliveryApp/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              backgroundColor0,
              backgroundColor2,
              backgroundColor1,
              backgroundColor1,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    NavBar(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Good Morning!",
                      style: kTitleStyle,
                    ),
                    MiniText(text: "What would you like to order?"),
                    SizedBox(
                      height: 30,
                    ),
                    SearchBox(),
                    SizedBox(
                      height: 30,
                    ),
                    Categories(),
                    SizedBox(
                      height: 30,
                    ),
                    RecentOrders(),
                    SizedBox(
                      height: 30,
                    ),
                    ShopsNearBy(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MiniText(
              text: "Search Food or Cafes near you",
            ),
            Spacer(),
            AppIcons(
              icon: Icons.search,
              color: Colors.amber,
            ),
          ],
        ));
  }
}

class AppIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  AppIcons({this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color.withOpacity(0.3),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

class MiniText extends StatelessWidget {
  final String text;
  MiniText({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
          fontWeight: FontWeight.w700,
          color: titleColor.withOpacity(0.5),
          fontSize: 18,
        ));
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/illustrations/drawer.svg",
          width: 30,
          height: 30,
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            "assets/images/My img 1.jpg",
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}
