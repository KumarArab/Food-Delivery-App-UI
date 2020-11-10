import 'package:FoodDeliveryApp/home.dart';
import 'package:FoodDeliveryApp/model.dart';
import 'package:FoodDeliveryApp/shopDetails.dart';
import 'package:FoodDeliveryApp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopsNearBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Near By You",
                style: kSubTitleStyle,
              ),
              Spacer(),
              MiniText(
                text: "More",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => Column(
                children: [
                  Hero(
                    tag: shopList[i].shopName,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => ShopDetails(
                                      shopData: shopList[i],
                                    )));
                      },
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width - 50,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(shopList[i].imageUrl),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    shopList[i].shopName,
                    style: GoogleFonts.nunitoSans(
                      color: titleColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              itemCount: shopList.length,
            ),
          )
        ],
      ),
    );
  }
}
