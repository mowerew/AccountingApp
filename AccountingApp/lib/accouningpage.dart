// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

<<<<<<< HEAD
import 'package:accountingapp/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'package:accountingapp/lisr.dart';
=======
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d

class AccountingPage extends StatefulWidget {
  AccountingPage({Key? key}) : super(key: key);

  @override
  State<AccountingPage> createState() => _AccountingPageState();
}

class _AccountingPageState extends State<AccountingPage> {
<<<<<<< HEAD
  List<User> user = [User(name: 'Mohammad', userName: 'mohammad')];
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                      child: IconButton(
                        onPressed: () {
                          _key.currentState!.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                        iconSize: MediaQuery.of(context).size.height * 0.04,
=======
                      child: Icon(
                        Icons.menu,
                        size: 30,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                        Container(
                          child: Column(
                            children: user
                                .map(
                                  (e) => Text(
                                    e.name,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 31, 29, 29),
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                                .toList(),
=======
                        Text(
                          "Mohammad",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                          ),
                        ),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              color: Colors.grey,
<<<<<<< HEAD
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                      //children: user.map((e) => Text(e.name),Text('data'),).toList(),

                      // Text(
                      //   "Welcome Back!",
                      //   style: TextStyle(
                      //       color: Colors.grey,
                      //       fontSize: 26,
                      //       fontWeight: FontWeight.w300),
                      // )
=======
                              fontSize: 26,
                              fontWeight: FontWeight.w300),
                        )
                      ],
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                    ),
                    Container(
                      child: Icon(
                        CupertinoIcons.add_circled_solid,
                        color: Color.fromARGB(255, 143, 27, 163),
<<<<<<< HEAD
                        size: MediaQuery.of(context).size.height * 0.05,
=======
                        size: 35,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                        Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "  Income  ",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                          ),
=======
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("  Income  "),
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                          child: Text(
                            "Expenses",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
=======
                          child: Text("Expenses"),
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
<<<<<<< HEAD
                height: MediaQuery.of(context).size.height * 0.02,
                indent: MediaQuery.of(context).size.width * 0.08,
                endIndent: MediaQuery.of(context).size.width * 0.08,
=======
                height: 5,
                indent: 40,
                endIndent: 40,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
=======
                              fontSize: 13,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "1,500,000 Rials",
                          style: TextStyle(
<<<<<<< HEAD
                            fontSize: MediaQuery.of(context).size.height * 0.03,
=======
                            fontSize: 20,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
<<<<<<< HEAD
                        size: MediaQuery.of(context).size.height * 0.04,
=======
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
<<<<<<< HEAD
                flex: 1,
=======
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
<<<<<<< HEAD
                      color: Color.fromARGB(255, 255, 212, 82),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.02,
                      ),
=======
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                    ),
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
<<<<<<< HEAD
                          margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * 0.01,
                            vertical: MediaQuery.of(context).size.height * 0.01,
                          ),
                          child: Icon(
                            Icons.card_giftcard_rounded,
                            size: MediaQuery.of(context).size.height * 0.05,
=======
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Icon(
                            Icons.card_giftcard_rounded,
                            size: 40,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.025,
                                  fontWeight: FontWeight.w500,
=======
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
                                  color: Colors.purple[600],
                                ),
                              ),
                              Text(
                                "300,000 Rials",
                                style: TextStyle(
<<<<<<< HEAD
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
=======
                                  fontSize: 16,
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
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
<<<<<<< HEAD
              Expanded(
                flex: 3,
                //height: MediaQuery.of(context).size.height * 0.24,
                child: ListView.builder(
                  itemCount: 5,
                  itemExtent: MediaQuery.of(context).size.height * 0.08,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {},
                    leading: Icon(
                      FontAwesomeIcons.gift,
                      size: MediaQuery.of(context).size.height * 0.04,
                    ),
                    title: Text(
                      "Grocery",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 15, 15),
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Just now",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Text(
                      "4500000 Rials",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 15, 15),
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
=======
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
>>>>>>> 059690ac6502a27d049273879c26c2dfa76bcd8d
            ],
          ),
        ),
      ),
    );
  }
}
