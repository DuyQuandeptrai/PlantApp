import 'package:flutter/material.dart';
import 'package:plantapp/BottomNav.dart';
import 'package:plantapp/Screen1/TrangChu.dart';
import 'package:plantapp/Screen1/cart.dart';
import 'package:plantapp/setup_default.dart';

class Homescreen1 extends StatefulWidget {
  const Homescreen1({super.key});

  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> {
  int _currentIndex = 0;

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return Trangchu();
      case 1:
        return Cart();
      case 2:
        return Center(child: Text("yêu thích"));
      default:
        return Center(child: Text("Tài khoản"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_currentIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottomnav(
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
