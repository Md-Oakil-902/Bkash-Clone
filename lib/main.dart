import 'package:bkash/activity/home_activity.dart';
import 'package:bkash/activity/signIn_activity.dart';
import 'package:bkash/activity/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        // '/': (context) => const Test(),
        '/': (context) => const SignInActivity(),
        '/home': (context) => const HomeActivity()

      },



    );
  }
}
