import 'package:flutter/material.dart';


import 'package:queenspot/screens/assets_path/assets_path.dart';
import 'package:queenspot/screens/global_widgets/global_widgets.dart';
import 'package:queenspot/screens/home_screen/widgets/custom_container_widget.dart';
import 'package:queenspot/screens/routes/route_name.dart';

import 'package:queenspot/screens/utils/app_strings.dart';
import 'package:queenspot/screens/utils/colors.dart';

import '../utils/constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:PreferredSize(preferredSize: const Size(double.infinity, 60),child:  AppBarWidget(appBarName:AppStrings.appBarName ,child:Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications))],) ,),),
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              containerWidget(width: 200,height: 120,image: AssetsPath.mackUp,name: 'About us',radius: 10,press: (){}),
              const SizedBox(width: 10,),
              containerWidget(width: 200,height: 120,name: 'Testimonals',image: AssetsPath.bridal,radius: 10,press: (){}),
              const SizedBox(width: 10,),
              containerWidget(width: 200,height: 120,name: 'Appointment',image: AssetsPath.mackUp,radius: 10,press: (){
                return  Navigator.pushNamed(context, RouteName.appointmentScreen);
              })])),
           SizedBox(height:size.height*0.03 ,),
           const Text(AppStrings.makeAnAppoinment,style: makeAnApointtextStyle,),
            SizedBox(height:size.height*0.03 ,),
            containerWithDividerWidget(width: double.infinity, height: 150, endIndent: 28.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Make Up',image: AssetsPath.mackUp),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150,endIndent: 30.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Hair Care',image: AssetsPath.hairCut),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150 ,endIndent: 80.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Bridal',image: AssetsPath.bridal),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150 ,endIndent: 140.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Others',image: AssetsPath.hands),
               SizedBox(height:size.height*0.02 ,),
        ]),
      )
    )));
  }

  CustomContainerWidget containerWidget({required double width,required double height,required Function() press, required double radius,String? name,image}) => CustomContainerWidget(width: width, height: height, radius: radius, 
  child: TextButton(
    onPressed: press,
    child: Column(
     
      children: [
      
    Image.asset(image,height: 80,),
    Text(name!,style: textStyle,),
  
  
    ],),
  ));

 CustomContainerWidget containerWithDividerWidget({required double width,required double height,required  double endIndent, required double thickness,required double radius,required Color color,String? name,image}) => 
 CustomContainerWidget(width: width, height: height, radius: radius, 
  child: Column(
     
    children: [
    Row(children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(name!,style: textStyle),
              Divider(endIndent: endIndent,color: color,thickness: thickness,),
            ],),
          )),
          ClipRRect(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
            ),
            child: Image.asset(image,height: 150,)),
        ],),
  


  ],));

}

