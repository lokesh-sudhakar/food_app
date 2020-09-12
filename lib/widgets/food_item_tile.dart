import 'package:dukaan_assignment/model/item.dart';
import 'package:dukaan_assignment/resources/colors/color_set.dart';
import 'package:dukaan_assignment/resources/strings/dukaan_strings.dart';
import 'package:flutter/material.dart';

class FoodItemTile extends StatefulWidget {
  final Item _item;

  FoodItemTile(this._item);

  @override
  _FoodItemTileState createState() => _FoodItemTileState();
}

class _FoodItemTileState extends State<FoodItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(
        top: 8
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border(
            bottom: BorderSide(
              color: ColorSet.lightGreyBorder,
            ),
          )),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: Image.asset(
                      widget._item.itemImage,
                      width: 96,
                      height: 96,
                    )),
                if (widget._item.offerPercent != null)
                  Positioned(
                    bottom: 2,
                    left: 14,
                    right: 14,
                    child: Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: ColorSet.offerColorBg,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Center(
                        child: Text(
                          "${widget._item.offerPercent}% OFF",
                          style: TextStyle(
                              fontSize: 12, color: ColorSet.textColorWhite),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    widget._item.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "${widget._item.units} ",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("₹${widget._item.sellingPrice}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Padding(padding: EdgeInsets.only(left: 4)),
                          if (widget._item.costPrice != null)
                            Text(
                              "₹${widget._item.costPrice}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .copyWith(
                                      decoration: TextDecoration.lineThrough),
                            ),
                        ],
                      ),
                      if (widget._item.count > 0)
                        Container(
                          height: 28,
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorSet.lightGreyBorder),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 24,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget._item.count--;
                                    });
                                  },
                                  iconSize: 20,
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.remove,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                color: ColorSet.primaryColorLight,
                                child: Center(
                                  child: Text(widget._item.count.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ),
                              ),
                              Container(
                                width: 24,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget._item.count++;
                                    });
                                  },
                                  iconSize: 20,
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.add,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (widget._item.count == 0)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget._item.count++;
                            });
                          },
                          child: Container(
                            height: 28,
                            width: 72,
                            decoration: BoxDecoration(
                                color: ColorSet.primaryColorLight,
                                border:
                                    Border.all(color: ColorSet.lightGreyBorder),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Center(
                                child: Text(
                              DukaanStrings.add,
                              style: Theme.of(context).textTheme.headline6,
                            )),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
