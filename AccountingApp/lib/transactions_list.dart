// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionsList {
  String type;
  int price;
  DateTime time;
  String name;
  Icon icon;
  TransactionsList({
    required this.type,
    required this.price,
    required this.time,
    required this.name,
    required this.icon,
  });
}

List<TransactionsList> transactionsList = [];
