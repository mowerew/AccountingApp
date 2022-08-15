// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Text(
                  "Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        child: Icon(
                          Icons.circle_rounded,
                          color: Color.fromARGB(45, 144, 25, 165),
                          size: 100,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: Icon(
                          Icons.fingerprint,
                          size: 80,
                          color: Color.fromARGB(255, 170, 23, 196),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        "Touch ID sensor to\n verify transaction",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        "Please verify your identity using Touch ID and\n                    proceed transaction",
                        style: TextStyle(
                            color: Color.fromARGB(255, 116, 116, 116)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07),
                      child: Stack(
                        children: [
                          Container(
                            child: Icon(
                              Icons.circle_rounded,
                              size: 50,
                              color: Color.fromARGB(255, 125, 21, 143),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
