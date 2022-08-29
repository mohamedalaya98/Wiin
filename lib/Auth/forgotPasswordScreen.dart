import 'package:flutter/material.dart';
import 'package:wiin/constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                      top: kDefaultPadding * 1.5,
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
                      "Forgot Password",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
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
              const SizedBox(height: kDefaultPadding * 1.5),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * 5.2,
                    right: kDefaultPadding * 5.2,
                    top: kDefaultPadding / 1.3,
                    bottom: kDefaultPadding / 1.3,
                  ),
                  child: Text(
                    'Send',
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
