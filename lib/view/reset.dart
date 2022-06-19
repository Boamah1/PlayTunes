import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reset_Pass extends StatefulWidget {
  const Reset_Pass({Key? key}) : super(key: key);

  @override
  State<Reset_Pass> createState() => _Reset_PassState();
}

class _Reset_PassState extends State<Reset_Pass> {
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
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Text(
                      "RESET PASSWORD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "We have sent a four digit code on your phone or email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const ListTile(
                    title: Text(
                      "Four Digit Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: const Text(
                      "New Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                    subtitle: TextField(
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
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: const Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: TextField(
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
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Reset poassword",
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
                        minimumSize: const Size(
                          300,
                          50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "If you read bla bla bla bla bla 😂",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
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
