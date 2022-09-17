import 'package:flutter/material.dart';
import 'package:queenspot/screens/utils/colors.dart';
import 'package:queenspot/screens/utils/constants.dart';

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({super.key,  required this.radius, required this.press, required this.day, required this.time, required this.forWhat, required this.work, required this.date });

final double radius;
final Function() press;
final String day,time,forWhat,work,date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius)),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(children:   [
               TableRow( children: [  
                 Text(day,style:const TextStyle(color: Color.fromARGB(255, 128, 125, 125))),  
                          const Text('Time',style:TextStyle(color: Color.fromARGB(255, 128, 125, 125))),  
                         const  Text('For',style:TextStyle(color: Color.fromARGB(255, 128, 125, 125))),  
                         
                           
                        ]),  
                        TableRow( children: [  
                           Text(date, style: textStyle),  
                          Text(time, style: textStyle),  
                          Text(forWhat, style: textStyle), 
                        ]),  
            ],),
          ),
         
         const  Divider(thickness: 2,),
         const Padding(
           padding:  EdgeInsets.only(left:8.0,right: 8.0,),
           child:  Text('Appointment',style:TextStyle(color: Color.fromARGB(255, 128, 125, 125))),
         ),  
         Padding(
            padding:  const EdgeInsets.only(left:8.0,right: 8.0,),
           child: Row(
             children:  [
              Text(work, style: textStyle),
             const Spacer(),
             IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))
             ],
           ),
         ), 
        ],)
    
    );
  }
}