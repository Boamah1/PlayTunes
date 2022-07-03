import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({Key? key}) : super(key: key);

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  TextEditingController phoneNumController = TextEditingController();
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Text(
                      'It`s Okay Reset your Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Row(
                      children: [
                        Text(
                          'We will send you on',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 13.sp,
                          ),
                        ),
                        Text(
                          ' One Time Password',
                          style:
                              TextStyle(color: Colors.white, fontSize: 13.sp),
                        ),
                        Text(
                          ' on',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.5.w),
                    child: Text(
                      'your phone number ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.sp, right: 17.sp),
                    child: ListTile(
                      title: Text(
                        'Phone Number',
                        style:
                            TextStyle(color: Colors.white, fontSize: 13.5.sp),
                      ),
                      subtitle: TextField(
                        onChanged: (value) {
                          if (value.length == 10) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        controller: phoneNumController,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sms,
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.1.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.sp),
                        ),
                        minimumSize: Size(250.w, 44.3.h),
                      ),
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
