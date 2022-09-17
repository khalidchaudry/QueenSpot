import 'package:flutter/material.dart';
import 'package:queenspot/screens/appointment_screen/widgets/rounded_countainer_widget.dart';
import 'package:queenspot/screens/utils/app_strings.dart';
import 'package:queenspot/screens/utils/colors.dart';


import '../global_widgets/global_widgets.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        backgroundColor: backgroundColor,
        appBar:PreferredSize(preferredSize: const Size(double.infinity, 50),child:  AppBarWidget(appBarName:AppStrings.myAppoinment ,child:Row(children: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))],) ,),),
        
        body: SafeArea(child: Padding(padding: const EdgeInsets.all(20),child: Column(children:  [
          const TabBar(
            indicatorColor: Colors.pink,
            tabs: [
            Tab(
              text: 'UpComing',
    
            ),
           
            Tab(
              text: 'Past',
              
            ),
          ]),
          SizedBox(
            height: 500,
            child: TabBarView(children: [
              Column(
                children: [
                                   const  SizedBox(height: 20,),
RoundedContainerWidget(radius: 10, press: (){}, day: 'Sunday', time: '12PM ', forWhat: 'My Self', work: 'Hair Cut', date:'20th Aug' ),
                  
                 const  SizedBox(height: 20,),
                                   
RoundedContainerWidget(radius: 10, press: (){}, day: 'Monday', time: '01PM ', forWhat: 'Friend', work: 'Pedicure Manicure', date:'25th Aug' ),
                ],
              ),
             Column(
                children: [
                                   const  SizedBox(height: 20,),
RoundedContainerWidget(radius: 10, press: (){}, day: 'Friday', time: '12PM ', forWhat: 'My Self', work: 'Hair Cut', date:'20th July' ),
                  
                 const  SizedBox(height: 20,),
                                   
RoundedContainerWidget(radius: 10, press: (){}, day: 'Monday', time: '01PM ', forWhat: 'Friend', work: 'Mack Up', date:'25th June' ),
 const  SizedBox(height: 20,),
                                   
RoundedContainerWidget(radius: 10, press: (){}, day: 'Tuesday', time: '03PM ', forWhat: 'Family', work: 'Hair Straightening', date:'30th June' ),
                ],
              ),
              


             
            ]),
          )
    
        ],),),),
      ),
    );
  }
}