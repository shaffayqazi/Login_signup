import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_signup/homepage.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(119, 7, 55, 100),
        body: Stack(
          children: [
            const Align(
              alignment: AlignmentDirectional(0.00, -0.75),
              child: Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontFamily: 'Raleway'),
              ),
            ),
            Center(
              child: Container(
                constraints: const BoxConstraints(maxHeight: 380, maxWidth: 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(-2, 0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(2, 0),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 12, right: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(119, 7, 55, 100).withOpacity(0.1),
                          prefixIcon: const Icon(Icons.account_circle),
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 12, right: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(119, 7, 55, 100).withOpacity(0.1),
                          prefixIcon: const Icon(Icons.email_rounded),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 12, right: 12),
                      child: TextField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(119, 7, 55, 100).withOpacity(0.1),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: _showPassword ? Colors.blue : Colors.grey,
                            ),
                            onPressed: () {
                              setState(
                                    () {
                                  _showPassword = !_showPassword;
                                },
                              );
                            },
                          ),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),


                    const SizedBox(
                      height: 15,
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      color: Color.fromRGBO(119, 7, 55, 100),
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(40),
                      child: const Text("SIGNUP"),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (context)=> const homepage()));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color.fromRGBO(119, 7, 55, 100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
