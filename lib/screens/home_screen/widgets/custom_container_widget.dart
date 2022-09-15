import 'package:flutter/material.dart';
import 'package:queenspot/screens/utils/colors.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key, required this.width,required this.height, required this.radius, required this.child });

final double width,height,radius;

final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius)),
        child:child
    
    );
  }
}