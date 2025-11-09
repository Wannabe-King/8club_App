import 'package:assingment_8club_app/config/routes.dart';
import 'package:assingment_8club_app/features/experiences/screens/experience_screen.dart';
import 'package:assingment_8club_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment8Club',
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.experiences,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

