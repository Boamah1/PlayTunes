import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 680.h,
                    width: double.maxFinite.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/style.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.h,
                            vertical: 25.h,
                          ),
                          child: Text(
                            "OTP VERIFICATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17.5.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.5.w),
                          child: Text(
                            "Verify the OTP sent to boy*****@gamail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.1.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 41.3.h,
                        ),
                        NewWidget(
                          controller1: controller1,
                          controller2: controller2,
                          controller3: controller3,
                          controller4: controller4,
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13.1.sp,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              minimumSize: Size(263.w, 41.3.h),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
  }) : super(key: key);

  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 40.h,
          width: 55.w,
          child: TextField(
            cursorColor: Colors.white,
            controller: controller1,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
          width: 55.h,
          child: TextField(
            cursorColor: Colors.white,
            controller: controller2,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
          width: 55.w,
          child: TextField(
            cursorColor: Colors.white,
            controller: controller3,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
          width: 55.w,
          child: TextField(
            cursorColor: Colors.white,
            controller: controller4,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
