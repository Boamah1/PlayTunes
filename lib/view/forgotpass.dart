import 'package:flutter/material.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({Key? key}) : super(key: key);

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/true.jpg"), fit: BoxFit.cover),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
