import 'package:flutter/material.dart';
import 'package:queenspot/screens/routes/route_name.dart';

import 'screens/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QueenSpot',
    
      onGenerateRoute: Routes.routeGenerator,
    
    );
  }
}
