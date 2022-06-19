import 'package:flutter/material.dart';
import 'package:tunes_2/view/otp_veri.dart';
import 'package:tunes_2/view/reset.dart';
import 'package:tunes_2/view/woo_hoo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Otp()
    );
  }
}
