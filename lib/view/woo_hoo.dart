import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/blue.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 133.h,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 55.sm,
                      backgroundImage: AssetImage("images/good.jpeg"),
                    ),
                  ),
                  SizedBox(
                    height: 17.sm,
                  ),
                  Text(
                    "WOO HOO!!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.sm,
                    ),
                  ),
                  SizedBox(
                    height: 17.sm,
                  ),
                  Text(
                    "Your Password has been reset successfull",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 5.sm,
                  ),
                  Text(
                    "Now login with your new password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sm,
                    ),
                  ),
                  SizedBox(
                    height: 50.sm,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sigin in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sm,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      minimumSize: Size(300.sm, 50.sm),
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
