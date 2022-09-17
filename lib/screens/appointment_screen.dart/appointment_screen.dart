import 'package:flutter/material.dart';
import 'package:queenspot/screens/utils/app_strings.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text(AppStrings.myAppoinment),actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))],),
    );
  }
}