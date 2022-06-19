import 'package:flutter/material.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 700,
                    width: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/style.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 30,
                          ),
                          child: Text(
                            "OTP VERIFICATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Verify the OTP sent to boy*****@gamail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: TextField(
                                controller: controller1,
                              ),
                              height: 3,
                              width: 50,
                              // color: Colors.white,
                            ),
                            Container(
                              child: TextField(
                                controller: controller2,
                              ),
                              height: 3,
                              width: 50,
                              // color: Colors.white,
                            ),
                            Container(
                              child: TextField(
                                controller: controller3,
                              ),
                              height: 3,
                              width: 50,
                              // color: Colors.white,
                            ),
                            Container(
                              child: TextField(
                                controller: controller4,
                              ),
                              height: 3,
                              width: 50,
                              // color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Verify",
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
                              minimumSize: const Size(300, 50),
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
