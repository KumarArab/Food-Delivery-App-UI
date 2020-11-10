import 'package:FoodDeliveryApp/home.dart';
import 'package:FoodDeliveryApp/model.dart';
import 'package:FoodDeliveryApp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Recent Orders",
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
            height: 160,
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => Container(
                  width: 320,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(orderList[i].ordAsset),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              orderList[i].ordName,
                              style: GoogleFonts.nunitoSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: titleColor,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MiniText(
                              text: "From ${orderList[i].ordShop}",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              orderList[i].price,
                              style: GoogleFonts.nunitoSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Icon(
                            Icons.bookmark,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              itemCount: orderList.length,
            ),
          )
        ],
      ),
    );
  }
}
