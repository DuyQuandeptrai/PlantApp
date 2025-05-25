// bottom_nav.dart
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatelessWidget {
  final int activeIndex;
  final Function(int) onTap;

  const Bottomnav({
    super.key,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final iconList = <IconData>[
      Icons.home,
      Icons.table_chart,
      Icons.shopify_outlined,
      Icons.person,
    ];

    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: activeIndex,
      gapLocation: GapLocation.none,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: onTap,
    );
  }
}
