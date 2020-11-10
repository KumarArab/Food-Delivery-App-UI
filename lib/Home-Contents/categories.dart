import 'package:FoodDeliveryApp/home.dart';
import 'package:FoodDeliveryApp/model.dart';
import 'package:FoodDeliveryApp/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: kSubTitleStyle,
          ),
          SizedBox(height: 20),
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => Container(
                  width: 120,
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: SvgPicture.asset(
                            catList[i].catAsset,
                          ),
                        ),
                      ),
                      MiniText(text: catList[i].catName),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
              itemCount: catList.length,
            ),
          ),
        ],
      ),
    );
  }
}
