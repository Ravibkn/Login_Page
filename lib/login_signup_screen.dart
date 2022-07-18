// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_print

import 'package:community_material_icon/community_material_icon.dart';
import 'package:first_work/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({Key? key}) : super(key: key);

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 70, left: 20),
                color: Color(0xFF3b5999).withOpacity(.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Welcome",
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.yellow.shade700,
                        ),
                        children: [
                          TextSpan(
                            text: isSignupScreen ? " Ravi" : " Back",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      isSignupScreen
                          ? "Signup to Continue"
                          : "Signin to Continue",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildButtonHalfContainer(true),
          AnimatedPositioned(
            duration: Duration(milliseconds: 400),
            curve: Curves.linear,
            top: isSignupScreen
                ? MediaQuery.of(context).size.height * .22
                : MediaQuery.of(context).size.height * .27,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              curve: Curves.linear,
              padding: EdgeInsets.all(20),
              height: isSignupScreen
                  ? MediaQuery.of(context).size.height * .55
                  : MediaQuery.of(context).size.height * .40,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSignupScreen = false;
                  });
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1,
                                  ),
                                ),
                                if (!isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "SIGNUP",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1,
                                  ),
                                ),
                                if (isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  ),
                              ],
                            ),
                          )
                        ],
                      ),
                      if (isSignupScreen) buildSignupMethad(context),
                      // if (!isSignupScreen)
                      if (!isSignupScreen) buildSignimMethad()
                    ],
                  ),
                ),
              ),
            ),
          ),
          buildButtonHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height - 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(isSignupScreen ? "Or Signup with" : "Or Signin with"),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTextbutton(
                          Icons.facebook, "Facebook", Palette.facebookColor),
                      buildTextbutton(CommunityMaterialIcons.google_plus,
                          "Google", Palette.googleColor),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildSignimMethad() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.email_outlined, "Email", false, true),
          buildTextField(Icons.lock_outline, "Password", true, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isRememberMe,
                      activeColor: Palette.textColor2,
                      onChanged: (value) {
                        setState(() {});
                        isRememberMe = !isRememberMe;
                      }),
                  Text(
                    "Remember Me",
                    style: TextStyle(fontSize: 12, color: Palette.textColor1),
                  )
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 12, color: Palette.textColor1),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Container buildSignupMethad(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          buildTextField(Icons.person, "User Name", false, false),
          buildTextField(Icons.email_outlined, "Email", false, true),
          buildTextField(Icons.lock_outline, "Password", true, false),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Palette.textColor2 : Colors.transparent,
                          border: Border.all(
                              width: 1,
                              color: isMale
                                  ? Colors.transparent
                                  : Palette.textColor1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.person,
                          color: isMale ? Colors.white : Palette.iconColor,
                        ),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Colors.transparent : Palette.textColor2,
                          border: Border.all(
                              width: 1,
                              color: isMale
                                  ? Palette.textColor1
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.person,
                          color: isMale ? Palette.iconColor : Colors.white,
                        ),
                      ),
                      Text(
                        "Female",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .030),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By Prassing 'Submit' you agree to our ",
                  style: TextStyle(color: Palette.textColor2),
                  children: [
                    TextSpan(
                      text: "term & conditions",
                      style: TextStyle(color: Colors.orange),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  TextButton buildTextbutton(
    IconData icon,
    String title,
    Color backgroundcolor,
  ) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          side: BorderSide(width: 1, color: Colors.grey),
          minimumSize: Size(155, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: backgroundcolor),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildButtonHalfContainer(bool showShadow) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      curve: Curves.linear,
      top: isSignupScreen
          ? MediaQuery.of(context).size.height * .70
          : MediaQuery.of(context).size.height * .60,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              if (showShadow)
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1.5,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
            ],
          ),
          child: !showShadow
              ? InkWell(
                  onTap: () {
                    isSignupScreen ? print("Monu") : print("Joshi");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade200,
                            Colors.orange.shade400,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ]),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                )
              : Center(),
        ),
      ),
    );
  }

  Padding buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Palette.iconColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(35)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(35)),
            ),
            contentPadding: EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1)),
      ),
    );
  }
}
