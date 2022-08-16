import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemExtent: MediaQuery.of(context).size.height * 0.08,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
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
    );
  }
}
