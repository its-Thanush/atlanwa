import 'dart:ffi';

import 'package:atlanwa/custombuttonlogin.dart';
import 'package:atlanwa/customscaffoldlogin.dart';
import 'package:atlanwa/home/loginscreen.dart';
import 'package:atlanwa/home/signupscreen.dart';
import 'package:atlanwa/welcome1.dart';
import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffoldlogin(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 40),
                child: Center(child: RichText(
                  textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'A T L A N W A\n',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    TextSpan(
                      text: '\n Limitless Possibilities To Innovation',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    )

                  ]
                ),)),
          )),
         Flexible(
             flex: 1,
             child: Align(
               alignment: Alignment.bottomRight,
               child: Row(
                          children: [
               const Expanded(child:  custombuttonlogin(
                 buttonText: 'Login',
                 onTap: loginscreen(),
                 color: Colors.transparent,
                 textcolor: Colors.white,
               ),
               ),
               Expanded(child:custombuttonlogin(
                 buttonText: 'Sign Up',
                 onTap: SignUpScreen(),
                 color: Colors.deepOrange.shade300,
                 textcolor: Colors.black,
               ), ),

                          ],

                        ),
             ))
        ],
      )
    );
  }
}
