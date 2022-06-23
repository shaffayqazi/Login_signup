import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_signup/homepage.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(119, 7, 55, 100),
        body:
            Stack(
              children: [
                const Align(
                  alignment: AlignmentDirectional(0.00, -0.70),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 40, color: Colors.white, fontFamily: 'Raleway'),
                  ),
                ),

        Center(
          child: Container(
            constraints: const BoxConstraints(maxHeight: 280, maxWidth: 280),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 16, right: 16),
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
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "We will send your text password to this email account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(119, 7, 55, 100),
                      borderRadius: BorderRadius.circular(40),
                      ),
                  padding:
                      EdgeInsets.only(left: 22, right: 22, top: 14, bottom: 14),
                  child: GestureDetector(
                    child: Text(
                      "RECOVER",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 6,),
                CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context)=> const homepage()));
                  },
                  child: Text(
                    "BACK",
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
