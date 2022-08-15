import 'package:flutter/material.dart';

class lisr extends StatefulWidget {
  lisr({Key? key}) : super(key: key);

  @override
  State<lisr> createState() => _lisrState();
}

class _lisrState extends State<lisr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 20,
              height: 10,
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
