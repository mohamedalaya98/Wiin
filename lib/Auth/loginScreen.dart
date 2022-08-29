import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wiin/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                        text: "No Account?",
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " \n Sign up",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: kSecondaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click");
                                Navigator.pushReplacementNamed(
                                    context, '/signup');
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
                      "Sign in",
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
              const SizedBox(height: kDefaultPadding * 1.5),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding / 1.2,
                      left: kDefaultPadding,
                    ),
                    child: Container(
                      width: 173,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE9F1FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            width: 20,
                            height: 20,
                          ),
                          const Text(
                            "Sign in with Google",
                            style: TextStyle(
                              color: Color(0xff4285F4),
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding / 1.2,
                      left: kDefaultPadding / 3,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF2F2F2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding / 1.2,
                      left: kDefaultPadding / 3,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF2F2F2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/twitter.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding * 2,
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
                    labelStyle: const TextStyle(
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
                  top: kDefaultPadding * 1.5,
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
                    labelStyle: const TextStyle(
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
                  top: kDefaultPadding / 4,
                  left: kDefaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    InkWell(
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: kSecondaryColor,
                        ),
                      ),
                      onTap: () {
                        print("click");
                        Navigator.pushReplacementNamed(
                            context, '/forgotpassword');
                      },
                    ),
                    const SizedBox(width: kDefaultPadding),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * 4.9,
                    right: kDefaultPadding * 4.9,
                    top: kDefaultPadding / 1.3,
                    bottom: kDefaultPadding / 1.3,
                  ),
                  child: Text(
                    'Sign in',
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
