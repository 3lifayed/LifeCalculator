import 'package:flutter/material.dart';
import 'package:life_calc/apps/BMI.dart';
import 'package:life_calc/apps/Age.dart';
import 'package:life_calc/apps/Area.dart';
import 'package:life_calc/apps/Date.dart';
import 'package:life_calc/apps/Discount.dart';
import 'package:life_calc/apps/Length.dart';
import 'package:life_calc/apps/Mass.dart';
import 'package:life_calc/apps/Percentage.dart';
import 'package:life_calc/apps/Speed.dart';
import 'package:life_calc/apps/Temperature.dart';
import 'package:life_calc/apps/Time.dart';
import 'package:life_calc/apps/Volume.dart';
import 'package:life_calc/gui/Mail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Calulator",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Life Calulator",
            style: TextStyle(color: Colors.black),
          ),
          leading: new IconButton(
              icon: new Image.asset("images/res1/mipmap-hdpi/ic_launcher.png"),
//            Icons.bubble_chart,
//            color: Colors.black,
          ),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.email),color: Colors.black, onPressed: () {navigateToSubPage(context);},)
          ],
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: TheGridview().build(context),
      ),
    );
  }
}

class TheGridview {
  var contxt;

  Card makeGridCell(String name, IconData icon, Widget w) {
    return Card(

      elevation: 10.0,
      margin: EdgeInsets.all(1.0),
      child: new InkWell(
        onTap: () {
          Navigator.push(
              contxt, MaterialPageRoute(builder: (BuildContext context) => w));
        },
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Center(child: Icon(icon)),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(child: Text(name)),
            ),
          ],
        ),
      ),
    );
  }

  GridView build(BuildContext context) {
    contxt = context;
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 3,
      childAspectRatio: 0.7,
      children: <Widget>[
        makeGridCell("BMI", Icons.fitness_center, new BMI()),
        makeGridCell("Age", Icons.cake, new Age()),
        makeGridCell("Discount", Icons.shopping_basket, new Discount()),
        makeGridCell("Percentage", Icons.show_chart, new Percentage()),
        makeGridCell("Date", Icons.calendar_today, new Date()),
        makeGridCell("Length", Icons.format_line_spacing, new Length()),
        makeGridCell("Area", Icons.format_shapes, new Area()),
        makeGridCell("Volume", Icons.drafts, new Volume()),
        makeGridCell("Temperature", Icons.beach_access, new Temperature()),
        makeGridCell("Speed", Icons.departure_board, new Speed()),
        makeGridCell("Time", Icons.access_time, new Time()),
        makeGridCell("Mass", Icons.nature_people, new Mass()),
      ],
    );
  }
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Mail()));
}