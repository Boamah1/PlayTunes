import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reset_Pass extends StatefulWidget {
  const Reset_Pass({Key? key}) : super(key: key);

  @override
  State<Reset_Pass> createState() => _Reset_PassState();
}

class _Reset_PassState extends State<Reset_Pass> {
  TextEditingController codeController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  @override
  bool isvisible = true;
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
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  ListTile(
                    title: Text(
                      "RESET PASSWORD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5.sp,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "We have sent a four digit code on your phone or email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.1.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  ListTile(
                    title: Text(
                      "Four Digit Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.1.sp,
                      ),
                    ),
                    subtitle: TextField(
                      controller: codeController,
                      onChanged: (value) {
                        if (value.length == 4) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  ListTile(
                    title: Text(
                      "New Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 13.1.sp,
                      ),
                    ),
                    subtitle: TextField(
                      controller: newPassController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          icon: Icon(
                            isvisible ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  ListTile(
                    title: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.1.sp,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: TextField(
                      controller: confPassController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          icon: Icon(
                            isvisible ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41.3.h,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Reset poassword",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.2.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        minimumSize: Size(
                          263.w,
                          41.3.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 58.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "If you read bla bla bla bla bla 😂",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.1.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
