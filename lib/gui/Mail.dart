import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mail extends StatefulWidget {
  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About Us",
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
                margin: EdgeInsets.only(top: 200.0),
                child: new Text(
                  "If you have any questions or suggestions please contact us on this e-mail\n\"devali4us@gmail.com\"\n\nVersion 1.0\n\n\n\nCopyright © 2019 Devali. All rights reserved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),),
          ],
        ),
      ),
    );
  }
}
