import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tunes_2/view/sign_in_page.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
final User? user = auth.currentUser;

class Home_page extends StatefulWidget {
  String userID;
  Home_page({Key? key,required this.userID}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [],
    );
  }
}
