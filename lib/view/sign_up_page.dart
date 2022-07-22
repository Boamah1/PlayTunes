import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tunes_2/view/home_page.dart';
import 'package:tunes_2/view/reset.dart';
import 'package:tunes_2/view/sign_in_page.dart';

final auth = FirebaseAuth.instance;

class SignUp_page extends StatefulWidget {
  const SignUp_page({Key? key}) : super(key: key);

  @override
  State<SignUp_page> createState() => _SignUp_pageState();
}

class _SignUp_pageState extends State<SignUp_page> {
  TextEditingController EmailControllar = TextEditingController();
  TextEditingController PasswordControllar = TextEditingController();
  TextEditingController UsernameControllar = TextEditingController();
  bool isvisible = true;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/this.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.8),
          body: ModalProgressHUD(
            inAsyncCall: isloading,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 30.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.sp),
                          child: Text(
                            'Welcome  to ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.sp),
                          child: Text(
                            'PlayTunes ',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Text(
                            'SIGN UP ',
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
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: ListTile(
                            title: Text(
                              'Username*',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            subtitle: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              controller: UsernameControllar,
                              decoration: InputDecoration(
                                hintText: 'Enter username',
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.input,
                                      color: Colors.white,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 17.h),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: ListTile(
                            title: Text(
                              'Email*',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.h,
                              ),
                            ),
                            subtitle: TextField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.white,
                              controller: EmailControllar,
                              decoration: InputDecoration(
                                  hintText: 'Enter email',
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.alternate_email,
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        SizedBox(height: 17.h),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: ListTile(
                            title: Text(
                              'Password*',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            subtitle: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              controller: PasswordControllar,
                              decoration: InputDecoration(
                                  hintText: 'Enter Password',
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isvisible = !isvisible;
                                        });
                                      },
                                      icon: Icon(
                                        isvisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      )),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.white,
                                  size: 22.h,
                                ),
                              ),
                              Text(
                                'I have read and agree to',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.5.h,
                                ),
                              ),
                              Text(
                                ' Terms and Condition',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.5.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              setState(
                                () {
                                  isloading = true;
                                },
                              );
                              try {
                                final newuser =
                                    await auth.createUserWithEmailAndPassword(
                                  email: EmailControllar.text,
                                  password: PasswordControllar.text,
                                );
                                if (newuser != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Home_page(userID: newuser.user!.uid),
                                    ),
                                  );
                                  print(newuser);
                                  setState(() {
                                    isloading = false;
                                  });
                                }
                              } catch (e) {
                                print(e);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    duration: Duration(seconds: 5),
                                    content: Text(
                                      e.toString(),
                                    ),
                                  ),
                                );
                              }
                              print('good');
                              if (EmailControllar.text.isEmpty ||
                                  PasswordControllar.text.isEmpty ||
                                  UsernameControllar.text.isEmpty) {
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
                                    builder: (_) => const SignIn_page(),
                                  ),
                                );
                              };
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.2.sp,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.h),
                              ),
                              minimumSize: Size(270.w, 44.3.h),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 3.h,
                                width: 85.w,
                                color: Colors.white,
                              ),
                              Text(
                                '   Or connect with   ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                height: 3.h,
                                width: 85.w,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/Facebook.jpg'),
                            ),
                            SizedBox(width: 20.w),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/Google.jpg'),
                            ),
                            SizedBox(width: 20.w),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/Twitter.jpg'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an Account?',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn_page(),
                                  ),
                                );
                              },
                              child: Text(
                                'SignIn',
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
