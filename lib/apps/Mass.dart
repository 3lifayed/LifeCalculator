import 'package:flutter/material.dart';

class Mass extends StatefulWidget {
  @override
  _MassState createState() => _MassState();
}

class _MassState extends State<Mass> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Tonne t",
    "Kilogram kg",
    "Gram g",
    "Pound lb",
    "Carat ct",

  ];

  var lengthsValue = "Tonne t";
  var lengthsValue2 = "Tonne t";
  double intoDouble = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Mass",
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
                            case "Tonne t":
                              {
                                switch (lengthsValue2) {
                                  case "Tonne t":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Kilogram kg":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Gram g":
                                    {
                                      res = double.parse((lengthVal * 	1000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Pound lb":
                                    {
                                      res = double.parse((lengthVal * 2204.62262)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Carat ct":
                                    {
                                      res = double.parse((lengthVal * 5000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                }
                              }
                              break;

                            case "Kilogram kg":
                              {
                                switch (lengthsValue2) {
                                  case "Tonne t":
                                    {
                                      res = double.parse((lengthVal * 0.001)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Kilogram kg":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;



                                  case "Gram g":
                                    {
                                      res = double.parse(
                                          (lengthVal * 1000)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Pound lb":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	2.20462)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Carat ct":
                                    {
                                      res = double.parse(
                                          (lengthVal * 5000)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                }
                              }
                              break;


                            case "Gram g":
                              {
                                switch (lengthsValue2) {
                                  case "Tonne t":
                                    {
                                      res = double.parse((lengthVal * 1e-6)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Kilogram kg":
                                    {
                                      res = double.parse((lengthVal * 	0.001)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Gram g":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Pound lb":
                                    {
                                      res = double.parse((lengthVal * 	0.00220462262)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Carat ct":
                                    {
                                      res = double.parse((lengthVal * 	5)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Pound lb":
                              {
                                switch (lengthsValue2) {
                                  case "Tonne t":
                                    {
                                      res = double.parse((lengthVal * 0.00045359237)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Kilogram kg":
                                    {
                                      res = double.parse((lengthVal * 0.45359237)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Gram g":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	453.59237)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Pound lb":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Carat ct":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2267.96185).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Carat ct":
                              {
                                switch (lengthsValue2) {
                                  case "Tonne t":
                                    {
                                      res = double.parse((lengthVal * 2e-7)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Kilogram kg":
                                    {
                                      res = double.parse((lengthVal * 	0.0002)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Gram g":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	0.2)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Pound lb":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.000440924524)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Carat ct":
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
