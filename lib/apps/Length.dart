import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Kilometer km",
    "Meter m",
    "Centimeter cm",
    "Millimeter mm",
    "Mile mi",
    "Yard yd",
    "Foot ft",
    "Inch in"
  ];

  var lengthsValue = "Kilometer km";
  var lengthsValue2 = "Kilometer km";
  double intoDouble = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Length",
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
                        child: new DropdownButton<String>(
                          items: lengths.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: TextStyle(fontSize: 20.0),
                              ),
                            );
                          }).toList(),
                          onChanged: (String newVlaueSelected2) {
                            _onDropDownItemSelected(newVlaueSelected2);
                          },
                          value: lengthsValue,
                        )),
                    new Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: new TextField(
                            controller: lengthcontroller,
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
                      child: new DropdownButton<String>(
                        items: lengths.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(
                              dropDownStringItem,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          );
                        }).toList(),
                        onChanged: (String newVlaueSelected) {
                          _onDropDownItemSelected2(newVlaueSelected);
                        },
                        value: lengthsValue2,
                      ),
                    ),
                    new Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new Text(
                              "${res}",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: cc),
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
                          lengthVal = double.parse(lengthcontroller.text);

                          switch (lengthsValue) {
                            case "Kilometer km":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse((lengthVal * 100000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 1000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse((lengthVal * 0.6213)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse((lengthVal * 1093.61)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse((lengthVal * 3280.84)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse((lengthVal * 39370.08)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Meter m":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse(
                                          (lengthVal * 100).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.6213 / 1000)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse(
                                          (lengthVal * 1093.61 / 1000)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse(
                                          (lengthVal * 3280.84 / 1000)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse(
                                          (lengthVal * 39370.08 / 1000)
                                              .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Centimeter cm":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal / 100000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse(
                                          (lengthVal / 100).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse(
                                          (lengthVal * 10).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.6213 * 10)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse((lengthVal * 0.0109361)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse((lengthVal * 0.0328084)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse((lengthVal * 0.3973008)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Millimeter mm":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal / 1000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal / 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse(
                                          (lengthVal / 10).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 6.213711922e-7)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.001093613298)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.003280839895)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.03937007874)
                                              .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Mile mi":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal * 1.609344)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal * 1609.344)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse((lengthVal * 160934.4)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 1609344)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse((lengthVal * 1760)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse((lengthVal * 5280)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse((lengthVal * 63360)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Yard yd":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal * 0.0009144)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal * 0.9144)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse((lengthVal * 91.44)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 914.4)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.0005681818182)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse(
                                          (lengthVal * 3).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse(
                                          (lengthVal * 36).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Foot ft":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal * 0.0003048)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal * 0.3048)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse((lengthVal * 30.48)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 304.8)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.0001893939394)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.3333333333)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse(
                                          (lengthVal * 12).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Inch in":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer km":
                                    {
                                      res = double.parse((lengthVal * 0.0000254)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter m":
                                    {
                                      res = double.parse((lengthVal * 0.0254)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Centimeter cm":
                                    {
                                      res = double.parse((lengthVal * 2.54)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Millimeter mm":
                                    {
                                      res = double.parse((lengthVal * 25.4)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Mile mi":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.00001578282828)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Yard yd":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.02777777778)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Foot ft":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.08333333333)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Inch in":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;
                          }
                        });
                      },
                      color: Colors.white30,
                      shape: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Convert",
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newVlaueSelected) {
    setState(() {
      this.lengthsValue = newVlaueSelected;
    });
  }

  void _onDropDownItemSelected2(String newVlaueSelected) {
    setState(() {
      this.lengthsValue2 = newVlaueSelected;
    });
  }
}
