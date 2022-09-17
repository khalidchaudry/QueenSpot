import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:queenspot/screens/appointment_screen/appointment_screen.dart';
import 'package:queenspot/screens/home_screen/home_screen.dart';
import 'package:queenspot/screens/routes/route_name.dart';

class Routes{
  static Route<dynamic> routeGenerator(RouteSettings settings){
     switch(settings.name){
      case RouteName.homeScreen:
      return PageTransition(child: const HomeScreen(), type: PageTransitionType.bottomToTop,duration: const Duration(milliseconds:800));
      case RouteName.appointmentScreen:
      return PageTransition(child: const MyAppointmentScreen(), type: PageTransitionType.bottomToTop,duration: const Duration(milliseconds:800));
   default:
        throw const FormatException("Route not found");
     }
  }
}