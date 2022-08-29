import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wiin/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final List<bool> _isSelected = [false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAuthBodyColor,
      body: Center(
        child: Container(
          width: 320,
          height: 670,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(height: kDefaultPadding / 2),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: kDefaultPadding,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "Welcome to",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " WiiN",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: kSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding * 2),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding,
                      left: kDefaultPadding,
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: "Have Account?",
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " \n Sign in",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: kSecondaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click");
                                Navigator.pushReplacementNamed(
                                    context, '/login');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding / 1.5,
                  left: kDefaultPadding,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding / 2,
                  left: kDefaultPadding,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Enter your username or email address",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              SizedBox(
                width: 280,
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Username or email address",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: "Poppins",
                      fontSize: 13,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffADADAD),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: kDefaultPadding),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding,
                          right: kDefaultPadding * 3,
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "User Name",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      SizedBox(
                        width: 135,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "User Name",
                            labelStyle: TextStyle(
                              color: Colors.black45,
                              fontFamily: "Poppins",
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xffADADAD),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: kDefaultPadding / 3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding,
                          right: kDefaultPadding * 2.5,
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "Contact Number",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      SizedBox(
                        width: 135,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Contact Number",
                            labelStyle: TextStyle(
                              color: Colors.black45,
                              fontFamily: "Poppins",
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xffADADAD),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Enter your Password",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              SizedBox(
                width: 280,
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: "Poppins",
                      fontSize: 13,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffADADAD),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Register as",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ToggleButtons(
                      borderColor: kSecondaryColor,
                      fillColor: kSecondaryColor,
                      borderWidth: 1,
                      selectedBorderColor: kSecondaryColor,
                      selectedColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // ignore: sort_child_properties_last
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ' Service Provider',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ' Service Searcher',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _isSelected.length; i++) {
                            _isSelected[i] = i == index;
                          }
                        });
                      },
                      isSelected: _isSelected,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * 4.8,
                    right: kDefaultPadding * 4.8,
                    top: kDefaultPadding / 1.3,
                    bottom: kDefaultPadding / 1.3,
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print('Pressed');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
