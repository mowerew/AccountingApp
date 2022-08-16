// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:accountingapp/transactions_list.dart';
import 'package:accountingapp/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'package:accountingapp/lisr.dart';

class AccountingPage extends StatefulWidget {
  AccountingPage({Key? key}) : super(key: key);

  @override
  State<AccountingPage> createState() => _AccountingPageState();
}

class _AccountingPageState extends State<AccountingPage> {
  //final List<TransactionsList> transactionsList = [];

  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  List<User> user = [User(name: 'Mohammad', userName: 'mohammad')];
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 28, 28),
      key: _key,
      drawer: Drawer(),
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
                      child: IconButton(
                        onPressed: () {
                          _key.currentState!.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                        color: Color.fromARGB(255, 230, 192, 80),
                        iconSize: MediaQuery.of(context).size.height * 0.04,
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
                        Container(
                          child: Column(
                            children: user
                                .map(
                                  (e) => Text(
                                    e.name,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        CupertinoIcons.add_circled_solid,
                        color: Color.fromARGB(255, 230, 192, 80),
                        size: MediaQuery.of(context).size.height * 0.05,
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
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                    topEnd: Radius.circular(25),
                                    topStart: Radius.circular(25),
                                  ),
                                ),
                                builder: (context) => SingleChildScrollView(
                                    child: Wrap(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01),
                                            child: TextFormField(
                                              controller: priceController,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.025),
                                              decoration: InputDecoration(
                                                labelText: "Price1",
                                                border: OutlineInputBorder(),
                                                // errorText: "Error",
                                                //suffixIcon:
                                                //  Icon(Icons.check_circle),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01),
                                            child: TextFormField(
                                              controller: descriptionController,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.025),
                                              decoration: InputDecoration(
                                                labelText: "Description",
                                                border: OutlineInputBorder(),
                                                // errorText: "Error",
                                                // suffixIcon:
                                                //     Icon(Icons.check_circle),
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              @override
                                              void initState() {
                                                transactionsList.add(
                                                  TransactionsList(
                                                    type: "Income",
                                                    price: int.parse(
                                                        priceController.text),
                                                    time: DateTime.now(),
                                                    name: descriptionController
                                                        .text,
                                                    icon:
                                                        Icon(Icons.card_travel),
                                                  ),
                                                );
                                                super.initState();
                                              }

                                              setState(() {});
                                              print("ok");
                                            },
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.025),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                              );
                            },
                            child: Text(
                              "  Income  ",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                            ),
                          ),
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
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(25),
                                  topStart: Radius.circular(25),
                                ),
                              ),
                              builder: (context) => SingleChildScrollView(
                                  child: Wrap(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                      top: MediaQuery.of(context).size.height *
                                          0.02,
                                      right: MediaQuery.of(context).size.width *
                                          0.02,
                                      left: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          child: TextFormField(
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.025),
                                            decoration: InputDecoration(
                                              labelText: "Price2",
                                              border: OutlineInputBorder(),
                                              // errorText: "Error",
                                              //suffixIcon:
                                              //  Icon(Icons.check_circle),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          child: TextFormField(
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.025),
                                            decoration: InputDecoration(
                                              labelText: "Description",
                                              border: OutlineInputBorder(),
                                              // errorText: "Error",
                                              // suffixIcon:
                                              //     Icon(Icons.check_circle),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Submit",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.025),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                            );
                          },
                          child: Text(
                            "Expenses",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Color.fromARGB(255, 230, 192, 80),
                height: MediaQuery.of(context).size.height * 0.02,
                indent: MediaQuery.of(context).size.width * 0.08,
                endIndent: MediaQuery.of(context).size.width * 0.08,
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
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "1,500,000 Rials",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: MediaQuery.of(context).size.height * 0.04,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 192, 80),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * 0.01,
                            vertical: MediaQuery.of(context).size.height * 0.01,
                          ),
                          child: Icon(
                            Icons.card_giftcard_rounded,
                            size: MediaQuery.of(context).size.height * 0.05,
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 253, 253, 253)),
                              ),
                              Text(
                                "300,000 Rials",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
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
                      color: Color.fromARGB(255, 230, 192, 80),
                      size: MediaQuery.of(context).size.height * 0.04,
                    ),
                    title: Text(
                      "Grocery",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
