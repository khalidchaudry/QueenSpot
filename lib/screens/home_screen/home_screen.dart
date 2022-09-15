import 'package:flutter/material.dart';
import 'package:queenspot/screens/assets_path/assets_path.dart';
import 'package:queenspot/screens/home_screen/widgets/custom_container_widget.dart';

import 'package:queenspot/screens/utils/app_strings.dart';
import 'package:queenspot/screens/utils/colors.dart';
import 'package:queenspot/screens/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text(AppStrings.appBarName),backgroundColor: backgroundColor,actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))],),
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              containerWidget(width: 200,height: 100,image: AssetsPath.mackUp,name: 'About us',radius: 10),
              const SizedBox(width: 10,),
              containerWidget(width: 200,height: 100,name: 'Testimonals',image: AssetsPath.bridal,radius: 10),
              const SizedBox(width: 10,),
              containerWidget(width: 200,height: 100,name: 'Appointment',image: AssetsPath.mackUp,radius: 10),
            ],
          ),
         
        ),
           SizedBox(height:size.height*0.03 ,),
           const Text(AppStrings.makeAnAppoinment,style: makeAnApointtextStyle,),
            SizedBox(height:size.height*0.03 ,),
            containerWithDividerWidget(width: double.infinity, height: 150, endIndent: 65.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Make Up',image: AssetsPath.mackUp),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150,endIndent: 100.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Hair Care',image: AssetsPath.hairCut),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150 ,endIndent: 120.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Bridal',image: AssetsPath.bridal),
             SizedBox(height:size.height*0.02 ,),
            containerWithDividerWidget(width: double.infinity, height: 150 ,endIndent: 163.0,thickness: 2,color: Colors.pink, radius: 10,name: 'Others',image: AssetsPath.hands),
        ],),
      ),)),
    );
  }

  CustomContainerWidget containerWidget({required double width,required double height, required double radius,String? name,image}) => CustomContainerWidget(width: width, height: height, radius: radius, 
  child: Column(
   
    children: [
    
  Image.asset(image,height: 80,),
  Text(name!,style: textStyle,),


  ],));

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
          Image.asset(image,height: 130,fit: BoxFit.cover,),
        ],),
  


  ],));

}

