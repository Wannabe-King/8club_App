import 'package:assingment_8club_app/screens/experience_screen.dart';
import 'package:assingment_8club_app/screens/onboarding_screen.dart';
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
      title: 'Flutter Demo',
      routes: {
        '/experience':(context)=>ExperienceScreen(),
        '/onboarding':(context)=>OnboardingScreen()
      },
      initialRoute: '/experience',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

