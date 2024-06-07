import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_nike/Pages/Login.dart';
import 'package:new_nike/Pages/bottomModelSheet.dart';
import 'package:new_nike/Pages/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_nike/Pages/signup.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '', password = '';

  TextEditingController userpasswordcontroller = new TextEditingController();
  TextEditingController usermailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Color.fromRGBO(6, 14, 21, 1.0),
            shape: StadiumBorder(),
            behavior: SnackBarBehavior.floating,
            content: Text(
              'Successfully Logged In',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomModalSheet(),),);
      } on FirebaseException catch (e) {
        if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                'Please Enter Correct Password',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        } else if (e.code == 'email-incorrect') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Please Enter Correct Email',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 37, 48, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50.0),
                    Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            SizedBox(height: 30.0),
                            Text(
                              'Hello Again!',
                              style: TextStyle(
                                fontFamily: 'Acme',
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Welcome Bacl You've Been Missed!",
                              style: TextStyle(
                                fontFamily: 'Acme',
                                fontSize: 16,
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                            SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Email Addres',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Acme',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                              controller: usermailcontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(22, 31, 40, 1),
                                label: const Text('Please Enter Your Email',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200
                                  ),
                                ),
                                hintText: 'Enter your Email',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Password',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Acme',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              controller: userpasswordcontroller,
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.password_outlined),
                                suffixIconColor: Colors.white,
                                filled: true,
                                fillColor: Color.fromRGBO(22, 31, 40, 1),
                                label: const Text('Please Enter Your Password',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200
                                  ),
                                ),
                                hintText: 'Enter your Password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Recovery Password',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(112, 123, 129, 1)
                                  ),),
                              ],
                            ),
                            SizedBox(height: 30.0),
                            GestureDetector(
                              onTap: () async {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    email = usermailcontroller.text;
                                    password = userpasswordcontroller.text;
                                  });
                                }
                                registration();
                              },
                              child: Container(
                                width: 335,
                                height: 54,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(91, 158, 225, 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: 'Poppins1',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            GestureDetector(
                              onTap: () async {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    email = usermailcontroller.text;
                                    password = userpasswordcontroller.text;
                                  });
                                }
                                registration();
                              },
                              child: Container(
                                width: 335,
                                height: 54,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(22, 31, 40, 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/1.svg", // Path of your icon
                                    ),
                                    SizedBox(width: 10),
                                    Text('Sign In Using Google',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins1',
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have An Account?",
                          style: TextStyle(
                            color: Color.fromRGBO(112, 123, 129, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins1',
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            'Sign Up For Free',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
