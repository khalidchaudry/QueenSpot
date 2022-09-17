import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.appBarName, required this.child});
final String appBarName;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title:  Text(appBarName),backgroundColor: backgroundColor,actions: [child],);
  }
}