import 'package:FoodDeliveryApp/home.dart';
import 'package:FoodDeliveryApp/model.dart';
import 'package:FoodDeliveryApp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopDetails extends StatelessWidget {
  final ShopModel shopData;
  ShopDetails({this.shopData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3e3e3),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsPreview(shopData: shopData),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shopData.shopName,
                    style: kSubTitleStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        shopData.shopDistance,
                        style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MiniText(
                        text: shopData.shopLocation,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star_border, color: Colors.amber, size: 30),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            TabBar(),
          ],
        ),
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  PageController _controller = PageController(initialPage: 0);

  double slidePosition = 0;
  int currentPage = 0;

  makeChanges(int val) {
    setState(() {
      slidePosition = val * MediaQuery.of(context).size.width * 0.33;
      currentPage = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: GestureDetector(
                          onTap: () => _controller.jumpToPage(0),
                          child: Text("Menu",
                              style: currentPage == 0
                                  ? kTabTextStyleSelected
                                  : kTabTextStyleUnSelected),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: GestureDetector(
                          onTap: () => _controller.jumpToPage(1),
                          child: Text("Reviews",
                              style: currentPage == 1
                                  ? kTabTextStyleSelected
                                  : kTabTextStyleUnSelected),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: GestureDetector(
                          onTap: () => _controller.jumpToPage(2),
                          child: Text("About",
                              style: currentPage == 2
                                  ? kTabTextStyleSelected
                                  : kTabTextStyleUnSelected),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Transform.translate(
                  offset: Offset(slidePosition, 0),
                  child: Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width * 0.33,
                    decoration: BoxDecoration(
                      color: titleColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: makeChanges,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular Menu",
                          style: kSubTitleStyle,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: orderList.length,
                            itemBuilder: (ctx, i) => Container(
                              width: 320,
                              height: 200,
                              margin: EdgeInsets.only(
                                bottom: 20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                orderList[i].ordAsset),
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
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      AppIcons(
                                        icon: Icons.add,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  color: backgroundColor0,
                  child: Center(
                    child: Text("O no no , These segments are for you to make"),
                  ),
                ),
                Container(
                  color: backgroundColor1,
                  child: Center(
                    child: Text(
                        "I am serious, make these two segments and show me on insta."),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailsPreview extends StatelessWidget {
  const DetailsPreview({
    Key key,
    @required this.shopData,
  }) : super(key: key);

  final ShopModel shopData;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: shopData.shopName,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            // BorderRadius.only(
            //   bottomLeft: Radius.circular(40),
            //   bottomRight: Radius.circular(40),
            // ),
            child: Image.asset(
              shopData.imageUrl,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: AppIcons(
                      icon: Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  AppIcons(
                    icon: Icons.bookmark,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  AppIcons(
                    icon: Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
