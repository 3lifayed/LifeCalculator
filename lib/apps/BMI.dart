import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final weightcontroller = new TextEditingController();
  double weight = 0;
  final heightcontroller = new TextEditingController();
  double height = 0;
  double res = 0;
  String fires = "";
  Color cc = Colors.black;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
                margin: EdgeInsets.only(left: 16.0),
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 20.0),
                      child: new Text(
                        "Weight (Kg):",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    new Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: new TextField(
                            controller: weightcontroller,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20.0),
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        )),
                  ],
                )),
            new Container(
                margin: EdgeInsets.only(left: 16.0),
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 20.0),
                      child: new Text(
                        "Height (Cm):",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    new Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: new TextField(
                            controller: heightcontroller,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20.0),
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        )),
                  ],
                )),
            new Container(
              margin: EdgeInsets.only(top: 80.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                      onPressed: () {
                        setState(() {
                          weight = double.parse(weightcontroller.text);
                          height = double.parse(heightcontroller.text) / 100;
                          res = double.parse(
                              (weight / (height * height)).toStringAsFixed(1));
                          if (res < 18.5) {
                            fires = "Underweight";
                            cc = Colors.blue;
                          } else if (res > 18.5 && res < 24.9) {
                            fires = "Healthy";
                            cc = Colors.green;
                          } else if (res > 25.0 && res < 29.9) {
                            fires = "Overweight";
                            cc = Colors.deepOrange;
                          } else {
                            fires = "Obese";
                            cc = Colors.red;
                          }
                        });
                      },
                      color: Colors.white30,
                      shape: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Result",
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      )),
                  new Text(
                    "BMI: ${res} ${fires}",
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold, color: cc),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
