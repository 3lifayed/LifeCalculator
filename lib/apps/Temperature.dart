import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Celsius C",
    "Fahrenheit F",
    "Kelvin K"
  ];

  var lengthsValue = "Celsius C";
  var lengthsValue2 = "Celsius C";
  double intoDouble = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Temperature",
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
                            case "Celsius C":
                              {
                                switch (lengthsValue2) {
                                  case "Celsius C":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Fahrenheit F":
                                    {
                                      res = double.parse(((lengthVal * 9/5) + 32)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Kelvin K":
                                    {
                                      res = double.parse((lengthVal + 	273.15)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Fahrenheit F":
                              {
                                switch (lengthsValue2) {
                                  case "Celsius C":
                                    {
                                      res = double.parse(( (lengthVal - 32) * 5/9)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Fahrenheit F":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;



                                  case "Kelvin K":
                                    {
                                      res = double.parse(
                                          ((lengthVal - 32) * 5/9 + 273.15)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                }
                              }
                              break;


                            case "Kelvin K":
                              {
                                switch (lengthsValue2) {
                                  case "Celsius C":
                                    {
                                      res = double.parse((lengthVal - 273.15)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Fahrenheit F":
                                    {
                                      res = double.parse(((lengthVal - 273.15) * 9/5 + 32)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Kelvin K":
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
