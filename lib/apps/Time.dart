import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  final lengthcontroller = new TextEditingController();
  double lengthVal = 0;
  double res = 0;
  Color cc = Colors.black;
  var lengths = [
    "Year y",
    "Week wk",
    "Day d",
    "Hour h",
    "Minute min",
    "Seconds s"
  ];

  var lengthsValue = "Year y";
  var lengthsValue2 = "Year y";
  double intoDouble = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Time",
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
                            case "Year y":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = lengthVal;
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse((lengthVal * 52.1428571)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Day d":
                                    {
                                      res = double.parse((lengthVal * 	365)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse((lengthVal * 8760)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse((lengthVal * 525600)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
                                    {
                                      res = double.parse((lengthVal * 31536000)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Week wk":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = double.parse((lengthVal * 0.0191780822)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;



                                  case "Day d":
                                    {
                                      res = double.parse(
                                          (lengthVal * 7)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	168)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse(
                                          (lengthVal * 10080)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
                                    {
                                      res = double.parse(
                                          (lengthVal * 604800)
                                              .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;


                            case "Day d":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = double.parse((lengthVal * 0.00273972603)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse((lengthVal * 	0.142857143)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Day d":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse((lengthVal * 	24)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse((lengthVal * 	1440)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
                                    {
                                      res = double.parse((lengthVal * 86400)
                                          .toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Hour h":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = double.parse((lengthVal * 0.000114155251)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse((lengthVal * 0.00595238095)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Day d":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	0.0416666667)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse(
                                          (lengthVal * 60).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
                                    {
                                      res = double.parse(
                                          (lengthVal * 3600).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Minute min":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = double.parse((lengthVal * 1.90258752e-6)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse((lengthVal * 	9.92063492e-5)
                                          .toStringAsFixed(6));
                                    }
                                    break;


                                  case "Day d":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	0.000694444444)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.0166666667)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse(
                                          (lengthVal).toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
                                    {
                                      res = double.parse(
                                          (lengthVal * 60).toStringAsFixed(6));
                                    }
                                    break;
                                }
                              }
                              break;

                            case "Seconds s":
                              {
                                switch (lengthsValue2) {
                                  case "Year y":
                                    {
                                      res = double.parse((lengthVal * 3.1709792e-8)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Week wk":
                                    {
                                      res = double.parse((lengthVal * 1.65343915e-6)
                                          .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Day d":
                                    {
                                      res = double.parse(
                                          (lengthVal * 1.15740741e-5)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Hour h":
                                    {
                                      res = double.parse(
                                          (lengthVal * 0.000277777778)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Minute min":
                                    {
                                      res = double.parse(
                                          (lengthVal * 	0.0166666667)
                                              .toStringAsFixed(6));
                                    }
                                    break;

                                  case "Seconds s":
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
