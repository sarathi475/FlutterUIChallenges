import 'package:flutter/material.dart';
import 'package:flutter_demo_login/constant.dart';
import 'package:flutter_demo_login/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // color: Colors.blueAccent,
            // color: Colors.blue
            gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple])
            // color: Colors.blueAccent,

            ),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.purple, Colors.deepPurple])
                  // color: Colors.blueAccent,
                  ),
              child: Center(
                  child: Text(
                "THE FUTURE OF MOBILE BANKING",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 26),
              )),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        topRight: Radius.circular(29))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text("Welcome Back",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        )),
                    Text("Hello there, sign in to continue",
                        style: TextStyle()),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "your username",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()));
                      },
                      child: Text("SignIn"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: FlutterLogo(
                        size: Size(40, 40).height,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Signup",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
