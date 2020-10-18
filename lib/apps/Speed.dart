import 'package:flutter/material.dart';

class Speed extends StatefulWidget {
  @override
  _SpeedState createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Kilometer per hour km/h",
    "Meter per second m/s",
    "Mile per hour mph"
  ];

  var lengthsValue = "Kilometer per hour km/h";
  var lengthsValue2 = "Kilometer per hour km/h";
  double intoDouble = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Speed",
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
                        width: 120.0,
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
                        width: 130.0,
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
                            case "Kilometer per hour km/h":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer per hour km/h":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Meter per second m/s":
                                    {
                                      res = double.parse((lengthVal * 0.277777778)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Mile per hour mph":
                                    {
                                      res = double.parse((lengthVal * 	0.621371192)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Meter per second m/s":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer per hour km/h":
                                    {
                                      res = double.parse((lengthVal * 3.6)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter per second m/s":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;



                                  case "Mile per hour mph":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2.23693629)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                }
                              }
                              break;


                            case "Mile per hour mph":
                              {
                                switch (lengthsValue2) {
                                  case "Kilometer per hour km/h":
                                    {
                                      res = double.parse((lengthVal * 1.609344)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Meter per second m/s":
                                    {
                                      res = double.parse((lengthVal * 	0.44704)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Mile per hour mph":
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
