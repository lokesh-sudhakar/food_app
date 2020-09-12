import 'package:dukaan_assignment/resources/strings/dukaan_strings.dart';
import 'package:dukaan_assignment/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'resources/colors/color_set.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: DukaanStrings.dukaan,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorSet.primaryColor,
        primaryColorLight: ColorSet.primaryColorLight,
        backgroundColor: ColorSet.backgroundColor,
        hintColor: ColorSet.hintTextColor,
        appBarTheme: AppBarTheme(
          color: ColorSet.primaryColor,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 20,
              color: ColorSet.textColorWhite,
            ),
          ),
          iconTheme: IconThemeData(
            color: ColorSet.textColorWhite,
          ),
        ),
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 18, color: ColorSet.textColorWhite),
          headline3: TextStyle(fontSize: 14, color: ColorSet.textColorGrey),
          headline4: TextStyle(fontSize: 14, color: ColorSet.textColorBlack),
          headline5: TextStyle(fontSize: 12, color: ColorSet.textColorBlack),
          headline6: TextStyle(fontSize: 14, color: ColorSet.primaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
