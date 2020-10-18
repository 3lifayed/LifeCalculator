import 'package:flutter/material.dart';

class Area extends StatefulWidget {

  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Square kilometer km²",
    "Square meter m²",
    "Square mile mi²",
    "Square yard yd²",
    "Square foot ft²",
    "Acre ac"
  ];

  var lengthsValue = "Square kilometer km²";
  var lengthsValue2 = "Square kilometer km²";
  double intoDouble = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Area",
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
                            case "Square kilometer km²":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse((lengthVal * 1000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Square mile mi²":
                                    {
                                      res = double.parse((lengthVal * 	0.3861021585)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse((lengthVal * 1195990.046)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse((lengthVal * 10763910.42)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
                                    {
                                      res = double.parse((lengthVal * 247.105407)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Square meter m²":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = double.parse((lengthVal * 0.000001)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;



                                  case "Square mile mi²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 3.861021585e-7)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	1.195990046)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 10.76391042)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.00024715407)
                                              .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;


                            case "Square mile mi²":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = double.parse((lengthVal * 2.58998811)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse((lengthVal * 	2589988.11)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Square mile mi²":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse((lengthVal * 	3097600)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse((lengthVal * 	27878400)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
                                    {
                                      res = double.parse((lengthVal * 640.000067)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Square yard yd²":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = double.parse((lengthVal * 8.3612736e-7)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse((lengthVal * 0.83612736)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Square mile mi²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	3.228305785e-7)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 9).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.000206611592).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Square foot ft²":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = double.parse((lengthVal * 9.290304e-8)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse((lengthVal * 	0.09290304)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Square mile mi²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	3.587006428e-8)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.1111111111)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2.29568435e-5).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Acre ac":
                              {
                                switch (lengthsValue2) {
                                  case "Square kilometer km²":
                                    {
                                      res = double.parse((lengthVal * 0.004046856)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square meter m²":
                                    {
                                      res = double.parse((lengthVal * 4046.856)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square mile mi²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.00156249984)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square yard yd²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 4839.99949)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Square foot ft²":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	43559.9955)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Acre ac":
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
