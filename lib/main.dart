import 'package:flutter/material.dart';
import 'package:life_calc/gui/Home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Home(),
    theme: ThemeData.light(),
    title: "Life Calulator",
  ));
}


