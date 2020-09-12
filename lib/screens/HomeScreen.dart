import 'package:dukaan_assignment/data_source/data_source.dart';
import 'package:dukaan_assignment/model/item.dart';
import 'package:dukaan_assignment/resources/strings/dukaan_strings.dart';
import 'package:dukaan_assignment/widgets/filter_box.dart';
import 'package:dukaan_assignment/widgets/food_item_tile.dart';
import 'package:dukaan_assignment/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> _items;

  @override
  void initState() {
    super.initState();
    _items = DataSource.getFoodItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DukaanStrings.homeFood),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            SearchBox(),
            FilterBox(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: _items.length,
                itemBuilder: (context, position) {
                  debugPrint("${_items.length}");
                  return FoodItemTile(_items[position]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
