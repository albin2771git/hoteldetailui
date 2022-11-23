import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoteldetailui/hotelDetail.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: HotelDetail(),
  ));
}
