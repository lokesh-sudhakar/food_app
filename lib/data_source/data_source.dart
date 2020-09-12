import 'package:dukaan_assignment/model/item.dart';


class DataSource{

  static List<Item> getFoodItems() {
    List<Item> items = List();
    items.add(Item(
        name: "Ice Cream Bowl",
        units: 1,
        sellingPrice: 209,
        costPrice: 399,
        offerPercent: 30,
        count: 2,
        itemImage: "assets/ice_cream_bowl.jpg"));
    items.add(Item(
        name: "Baskin Robbin’s Scoop Cup",
        units: 1,
        sellingPrice: 209,
        itemImage: "assets/scoop_cup.jpg"));
    items.add(Item(
        name: "Ice Cream Bowl",
        units: 1,
        sellingPrice: 249,
        itemImage: "assets/kwality_walls.jpg"));
    items.add(Item(
        name: "Kwality Walls Black Currant",
        units: 1,
        sellingPrice: 175,
        itemImage: "assets/black_currant.jpg"));
    items.add(Item(
        name: "Ice Cream Bowl",
        units: 1,
        sellingPrice: 209,
        costPrice: 399,
        offerPercent: 30,
        itemImage: "assets/ice_cream_bowl.jpg"));
    items.add(Item(
        name: "Baskin Robbin’s Scoop Cup",
        units: 1,
        sellingPrice: 209,
        itemImage: "assets/scoop_cup.jpg"));
    return items;
  }
}