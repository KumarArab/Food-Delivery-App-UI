class ShopModel {
  final String imageUrl;
  final String shopName;
  final String shopLocation;
  final String shopDistance;

  ShopModel(
      {this.imageUrl, this.shopName, this.shopLocation, this.shopDistance});
}

class CategoryModel {
  final String catName;
  final String catAsset;

  CategoryModel({this.catName, this.catAsset});
}

class RecentOrderModel {
  final String ordName;
  final String ordAsset;
  final String ordShop;
  final String price;

  RecentOrderModel({this.ordName, this.ordAsset, this.ordShop, this.price});
}

List<RecentOrderModel> orderList = [
  RecentOrderModel(
    ordAsset: "assets/images/donut.jpg",
    ordName: "Dunkin Donuts",
    ordShop: "Pink Berry Bakery",
    price: "\$ 34.59",
  ),
  RecentOrderModel(
    ordAsset: "assets/images/fries.jpg",
    ordName: "French Fries",
    ordShop: "Samina Pizzas",
    price: "\$ 12.99",
  ),
];

List<CategoryModel> catList = [
  CategoryModel(catName: "Pizza", catAsset: "assets/illustrations/pizza.svg"),
  CategoryModel(
      catName: "Ice-cream", catAsset: "assets/illustrations/ice-cream.svg"),
  CategoryModel(
      catName: "Burgers", catAsset: "assets/illustrations/burger.svg"),
  CategoryModel(
      catName: "Coffee", catAsset: "assets/illustrations/coffee-cup.svg"),
  CategoryModel(
      catName: "Fries", catAsset: "assets/illustrations/french-fries.svg"),
  CategoryModel(catName: "More", catAsset: "assets/illustrations/more.svg"),
];

List<ShopModel> shopList = [
  ShopModel(
    imageUrl: "assets/images/samiana-pizzas.jpg",
    shopName: "Flutter Guy Pizzas",
    shopLocation: "Lower Santum, New York",
    shopDistance: "0.34Km",
  ),
  ShopModel(
    imageUrl: "assets/images/pink-berry-bakery.jpg",
    shopName: "Pink Berry Bakery",
    shopLocation: "Rosewood Park, New York",
    shopDistance: "1.43Km",
  ),
  ShopModel(
    imageUrl: "assets/images/starluck-coffee.jpg",
    shopName: "StarLuck Coffees",
    shopLocation: "Wall Street, New York",
    shopDistance: "1.21Km",
  ),
  ShopModel(
    imageUrl: "assets/images/crasy-icecream-parlor.jpg",
    shopName: "Crazy Ice-cream Parlor",
    shopLocation: "Rosewood Park, New York",
    shopDistance: "1.43Km",
  ),
];
