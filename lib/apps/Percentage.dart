import 'package:flutter/material.dart';

class Percentage extends StatefulWidget {
  @override
  _PercentageState createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {

  final _oPrice = new TextEditingController();
  double oPrice = 0;
  final _discount = new TextEditingController();
  double discount = 0;

  double fPrice = 0;
  double save = 0;

  Color cc = Colors.black;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Percentage",
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
                        "Percentage(%)",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    new Container(
                        width: 140.0,
                        padding: const EdgeInsets.only(top: 20.0,),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: new TextField(
                            controller: _discount,
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
                        "Of",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    new Container(
                        width: 250.0,
                        padding: const EdgeInsets.only(top: 20.0, left: 110.0),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                          ),
                          child: new TextField(
                            controller: _oPrice,
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
              margin: EdgeInsets.only(top: 30.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                      onPressed: () {
                        setState(() {
                          oPrice = double.parse(_oPrice.text);
                          discount = double.parse(_discount.text);

                          save = (discount*oPrice)/100;
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
                    "Is ${save}",
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold, color: cc),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
