import 'package:flutter/material.dart';
import 'package:plantapp/HomeScreen.dart';
import 'package:plantapp/Screen1/DetailScreen.dart';
import 'package:plantapp/Screen1/Plant.dart';
import 'package:plantapp/Screen1/TrangChu.dart';
import 'package:plantapp/setup_default.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Tạo plant mẫu để truyền vào màn hình chi tiết
    // final dummyPlant = Plant(
    //   name: "StoneLotus",
    //   price: 400,
    //   country: "Russia",
    //   imagePath: "assets/images/img.png",
    // );

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: DetailScreen(
      //   plant: dummyPlant,
      // ),
      home: Homescreen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
