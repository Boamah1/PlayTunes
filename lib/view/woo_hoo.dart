import 'package:flutter/material.dart';

class Woo_Hoo extends StatefulWidget {
  const Woo_Hoo({Key? key}) : super(key: key);

  @override
  State<Woo_Hoo> createState() => _Woo_HooState();
}

class _Woo_HooState extends State<Woo_Hoo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/blue.jpg"), fit: BoxFit.cover),
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
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("images/good.jpeg"),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "WOO HOO!!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "Your Password has been reset successfull",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Now login with your new password",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sigin in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      minimumSize: Size(300, 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
