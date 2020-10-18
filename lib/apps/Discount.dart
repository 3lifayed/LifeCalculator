import 'package:flutter/material.dart';

class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {

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
          "Discount",
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
                        "Original Price(\$):",
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
                margin: EdgeInsets.only(left: 16.0),
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 20.0),
                      child: new Text(
                        "Discount(%off):",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    new Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(top: 20.0, left: 11.0),
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
                          fPrice = oPrice - save;
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
                    "Final Price: ${fPrice}\$",
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold, color: cc),
                  ),
                  new Text(
                    "You Save: ${save}\$",
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
