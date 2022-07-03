import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunes_2/view/home_page.dart';

class SignIn_page extends StatefulWidget {
  const SignIn_page({Key? key}) : super(key: key);

  @override
  State<SignIn_page> createState() => _SignIn_pageState();
}

class _SignIn_pageState extends State<SignIn_page> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/pick.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Text(
                      'Welcome to ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Text(
                      'PlayTunes',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Text(
                      'SIGN IN ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: ListTile(
                      title: Text(
                        'Email or Username*',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      subtitle: TextField(
                        controller: EmailController,
                        decoration: InputDecoration(
                          hintText: 'Enter email or username',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: ListTile(
                      title: Text(
                        'Password*',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      subtitle: TextField(
                        controller: PasswordController,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    isvisible = !isvisible;
                                  },
                                );
                              },
                              icon: Icon(
                                isvisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, right: 20.w),
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        print('good');
                        if (EmailController.text.isEmpty ||
                            PasswordController.text.isEmpty) {
                          print("is empty");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Invalid"),
                              backgroundColor: Colors.deepOrange,
                              duration: Duration(seconds: 1),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Home_page(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.2.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.sp),
                          ),
                          minimumSize: Size(270.w, 44.3.h)),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3.h,
                        width: 90.h,
                        color: Colors.white,
                      ),
                      Text(
                        '   Or connect with   ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 3,
                        width: 90.h,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Facebook.jpg'),
                      ),
                      SizedBox(width: 20.h),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Google.jpg'),
                      ),
                      SizedBox(width: 20.h),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Twitter.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`t have an Account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'SignUp',
                        style: TextStyle(color: Colors.red),
                      )
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
