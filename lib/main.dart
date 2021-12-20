import 'package:flutter/material.dart';
import 'package:qiita/pages/top_page.dart';
import 'package:qiita/pages/bottom_nav.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Mobile Qiita App',
      home: BottomNav(),

      debugShowCheckedModeBanner: false,
    );
  }
}

