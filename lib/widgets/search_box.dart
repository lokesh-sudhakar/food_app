import 'package:dukaan_assignment/resources/images/dukaan_images.dart';
import 'package:dukaan_assignment/resources/strings/dukaan_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16, right: 16, bottom: 16, top: 4),
        child:TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
              hintText: DukaanStrings.searchForProduct,
              prefixIcon: IconButton(
                icon: SvgPicture.asset(DukaanVector.searchIconGrey,
                    height: 14, width: 14),
              ),
              filled: true,
              focusColor: Theme.of(context).primaryColor,
              fillColor: Theme.of(context).backgroundColor,
              contentPadding: EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100))),
        ),
      ),
    );
  }
}
