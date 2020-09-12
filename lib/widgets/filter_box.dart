import 'package:dukaan_assignment/resources/colors/color_set.dart';
import 'package:dukaan_assignment/resources/images/dukaan_images.dart';
import 'package:dukaan_assignment/resources/strings/dukaan_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid,
                width: 1.0,
                color: ColorSet.lightGreyBorder)),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 4 / 1,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0),
                          icon: SvgPicture.asset(
                              DukaanVector.gridIconGrey,
                              height: 18,
                              width: 18),
                        ),
                        Text(
                          DukaanStrings.gridView,
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 8.0),
                        child: VerticalDivider(
                          thickness: 1,
                          color: ColorSet.lightGreyBorder,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.all(0),
                    icon: SvgPicture.asset(DukaanVector.sortIconGrey,
                        height: 18, width: 18),
                  ),
                  Text(
                    DukaanStrings.sortLabel,
                    style: TextStyle(
                        fontSize: 14, color: ColorSet.textColorGrey),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
