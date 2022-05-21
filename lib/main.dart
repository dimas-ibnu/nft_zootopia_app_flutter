import 'package:flutter/material.dart';
import 'package:zootopia_nft/view/dashboard/dashboard_screen.dart';
import 'package:zootopia_nft/view/onboarding/onboarding_screen.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZooTopia',
      theme: ThemeData(
        fontFamily: 'samsungsharpsans',
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
      initialRoute: '/onboarding',
    );
  }
}
