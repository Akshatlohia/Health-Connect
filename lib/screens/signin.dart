import 'package:flutter/material.dart';
import 'package:health_connect/main.dart';
import 'package:health_connect/networking.dart';
import 'package:health_connect/screens/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = " ", password = " ";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Image(image: AssetImage("images/login.png")),
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                      child: TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFF6A6A),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: '   Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 15),
                      child: TextField(
                        obscureText: true,
                        onChanged: (text) {
                          password = text;
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFF6A6A),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: '   Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: Color(0xFFFC6464)),
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20,
                      ),
                      child: ElevatedButton(
                          onPressed: () async {
                            // await log_in(email, password);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFF2626)),
                          ),
                          child: SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Center(
                                  child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Register Now",
                              style: TextStyle(color: Color(0xFFFC6464)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
