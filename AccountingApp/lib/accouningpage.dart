// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountingPage extends StatefulWidget {
  AccountingPage({Key? key}) : super(key: key);

  @override
  State<AccountingPage> createState() => _AccountingPageState();
}

class _AccountingPageState extends State<AccountingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // ignore: prefer_const_constructors
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage("images/1.jpg"),
                        // child: ClipRRect(
                        //   borderRadius: BorderRadius.circular(50),
                        //   child: Image.asset(
                        //     "images/1.jpg",
                        //     fit: BoxFit.fill,
                        //   ),
                        // ),
                      ),

                      //Image.asset("lib\image\@Wallpaper_4K3D (5305).jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mohammad",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 26,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        CupertinoIcons.add_circled_solid,
                        color: Color.fromARGB(255, 143, 27, 163),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.23,
                          child: Image.asset(
                            "images/save.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("  Income  "),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          //height: MediaQuery.of(context).size.height * 0.3,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.22,
                            child: Image.asset(
                              "images/spendd.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Expenses"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 5,
                indent: 40,
                endIndent: 40,
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Spend",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "1,500,000 Rials",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Icon(
                            Icons.card_giftcard_rounded,
                            size: 40,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Column(
                            children: [
                              Text(
                                "Shopping",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.purple[600],
                                ),
                              ),
                              Text(
                                "300,000 Rials",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 32, 32, 32),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.24,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => ListTile(
                    leading: Icon(FontAwesomeIcons.shoppingBasket),
                  ),
                ),
              )
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         margin: EdgeInsets.only(right: 10),
              //         width: MediaQuery.of(context).size.width * 0.6,
              //         height: MediaQuery.of(context).size.height * 0.13,
              //         decoration: BoxDecoration(
              //           color: Colors.amber,
              //           borderRadius: BorderRadius.circular(18),
              //         ),
              //         child: Row(
              //           children: [
              //             Icon(
              //               CupertinoIcons.shopping_cart,
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(right: 10),
              //         width: MediaQuery.of(context).size.width * 0.6,
              //         height: MediaQuery.of(context).size.height * 0.13,
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //           borderRadius: BorderRadius.circular(18),
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(right: 10),
              //         width: MediaQuery.of(context).size.width * 0.6,
              //         height: MediaQuery.of(context).size.height * 0.13,
              //         decoration: BoxDecoration(
              //           color: Colors.green,
              //           borderRadius: BorderRadius.circular(18),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
