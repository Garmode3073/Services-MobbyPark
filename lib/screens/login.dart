import 'package:flutter/material.dart';
import 'package:servicesmob/components/textfields.dart';
import 'package:servicesmob/global.dart' as g;
import 'package:servicesmob/screens/landing.dart';
import 'package:servicesmob/screens/loading.dart';
import 'package:page_transition/page_transition.dart';
import 'package:string_validator/string_validator.dart';
import 'package:servicesmob/components/background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');
  final _fkey = GlobalKey<FormState>();
  bool isload = false;

  @override
  Widget build(BuildContext context) {
    g.height = MediaQuery.of(context).size.height;
    g.width = MediaQuery.of(context).size.width;
    return isload
        ? LoadingPage()
        : GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: g.background,
              body: Stack(
                children: [
                  Positioned(
                    width: g.width * 2,
                    height: g.width * 2,
                    top: -g.width,
                    left: -g.width,
                    child: BGreglog(),
                  ),
                  Center(
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.topToBottom,
                            child: LandingPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: g.height * 0.4),
                        width: g.width * 0.8,
                        height: g.height * 0.1077,
                        padding: EdgeInsets.only(top: g.height * 0.025),
                        decoration: BoxDecoration(
                          color: g.button,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: g.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: g.width * 0.8,
                      height: g.height * 0.352,
                      decoration: BoxDecoration(
                        color: g.contbg,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: g.shadow,
                            blurRadius: 3.0,
                            offset: Offset(0, 6.0),
                            spreadRadius: 0.5,
                          ),
                        ],
                      ),
                      child: Form(
                        key: _fkey,
                        child: ListView(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: g.width * 0.33 / 2,
                                  right: g.width * 0.33 / 2,
                                  bottom: g.height * 0.021),
                              child: Text(
                                'LOG IN YOUR ACCOUNT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: g.primary,
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: g.width * 0.05,
                                vertical: g.height * 0.01,
                              ),
                              child: TextFld(
                                ctrler: email,
                                hint: 'Email',
                                validity: (String email) {
                                  if (email.trim().isEmpty) {
                                    return 'Email field must not be empty';
                                  } else if (!isEmail(email.trim())) {
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: g.width * 0.05,
                                vertical: g.height * 0.01,
                              ),
                              child: PassFld(
                                ctrler: password,
                                hint: 'Password',
                                validity: (String pass) {
                                  if (pass.trim().isEmpty) {
                                    return 'Password field must not be empty';
                                  } else if (pass.trim().length < 8) {
                                    return 'Password not strong enough';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            // SizedBox(
                            //   height: g.height * 0.05,
                            // ),
                            // RawMaterialButton(
                            //   onPressed: () async {
                            //     if (_fkey.currentState.validate()) {
                            //       setState(() {
                            //         isload = true;
                            //       });
                            //       email.clear();
                            //       password.clear();
                            //     }
                            //   },
                            //   child: Container(
                            //     height: g.height * 0.056,
                            //     width: g.width * 0.42,
                            //     decoration: BoxDecoration(
                            //       color: g.primary,
                            //       borderRadius: BorderRadius.circular(
                            //           g.height * 0.028),
                            //     ),
                            //     child: Center(
                            //       child: Text(
                            //         'Login',
                            //         style: TextStyle(
                            //           fontSize: 20,
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: g.height * 0.03,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
