import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Cubic meters m³",
    "Cubic centimeters cm³",
    "Cubic millimeters mm³",
    "Liters l",
    "Gallons g",
    "Cubic miles mi³",
    "Cubic yards yd³",
    "Cubic feet ft³",
    "Cubic inches in³"
  ];

  var lengthsValue = "Cubic meters m³";
  var lengthsValue2 = "Cubic meters m³";
  double intoDouble = 0.0;



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Volume",
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
                        width: 120.0,
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
                            case "Cubic meters m³":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 1000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 1000000000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse((lengthVal * 2.399127586e-10)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse((lengthVal * 	1.307950619)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse((lengthVal * 35.31466672)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse((lengthVal * 61023.74409)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal * 264.17205)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic centimeters cm³":
                              {
                                switch (lengthsValue2) {
                                  case "cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.000001)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	1000).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 0.001)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2.399127586e-16)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.000001307950619)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.00003531466672)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.06102374409)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal / 3785.412)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic millimeters mm³":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal *1e-9)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse(
                                          (lengthVal *0.001).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.000001).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2.399127586e-19)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse((lengthVal * 1.307950619e-9)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse((lengthVal * 3.531466671e-8)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse((lengthVal * 0.00006102374408)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal / 3.785e+6)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Liters l":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.001)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 1000)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse(
                                          (lengthVal / 1000000).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 2.399127586e-13)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.001307950619)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.03531466672)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 61.02374409)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal / 3.785)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Gallons g":
                              {
                                switch (lengthsValue2) {
                                  case "Gallons g":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.003785411784)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 3785.411784)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 3785411.784)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 3.785411784)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse((lengthVal / 1.101e+12)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse((lengthVal / 201.974)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse((lengthVal / 7.481)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse((lengthVal * 231)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic miles mi³":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 4168181825)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 4.168181825e+15)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 4.168181825e+18)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 4.168181825e+12)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse((lengthVal * 5.452e+9)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse((lengthVal * 1.47197952e+11)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse((lengthVal * 2.543580611e+14)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal * 1.101e+12)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic yards yd³":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.764554858)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 764554.858)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 764554858)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 764.554858)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 1.834264651e-10)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 27).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 46656).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal * 201.974)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic feet ft³":
                              {
                                switch (lengthsValue2) {
                                  case "Cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.02831684659)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 28316.84659)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 28316846.59)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 28.31684659)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 6.79357278e-12)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.03703703704)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 1728).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal * 7.481)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Cubic inches in³":
                              {
                                switch (lengthsValue2) {
                                  case "cubic meters m³":
                                    {
                                      res = double.parse((lengthVal * 0.000016387064)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic centimeters cm³":
                                    {
                                      res = double.parse((lengthVal * 16.387064)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic millimeters mm³":
                                    {
                                      res = double.parse((lengthVal * 16387.064)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Liters l":
                                    {
                                      res = double.parse((lengthVal * 0.016387064)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic miles mi³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 3.931465729e-15)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic yards yd³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.00002143347051)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic feet ft³":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.0005787037037)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Cubic inches in³":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Gallons g":
                                    {
                                      res = double.parse((lengthVal / 231)
                                          .toStringAsFixed(6));
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
