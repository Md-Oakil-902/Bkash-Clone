import 'package:bkash/activity/home_activity.dart';
import 'package:bkash/activity/inboxActivity.dart';
import 'package:bkash/activity/signIn_activity.dart';
import 'package:bkash/activity/test.dart';
import 'package:flutter/material.dart';

import 'activity/qrCodeScanActivity.dart';
import 'activity/searchActivity.dart';

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

        '/': (context) => const HomeActivity(),
        //'/home': (context) => const HomeActivity(),
        '/qr': (context) => const Qrcodescanactivity(),
        '/search': (context) => const SearchActivity(),
        '/inbox': (context) => const InboxActivity()


      },
    );
  }
}
