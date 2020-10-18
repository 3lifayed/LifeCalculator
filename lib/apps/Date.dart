import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  static DateTime _bDate = new DateTime.now();
  static DateTime _tDate = new DateTime.now();

  static String bDate = DateFormat('dd-MM-yyyy').format(_bDate);
  static String tDate = DateFormat('dd-MM-yyyy').format(_tDate);
  static int totalDays = 0;


  static int resindays = 0;
  static int resinyears = 0;
  static int resinmonths = 0;
  static List<int> months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  static int _bDay = int.parse(DateFormat('dd').format(_bDate));
  static int _bMonth = int.parse(DateFormat('MM').format(_bDate));
  static int _bYear = int.parse(DateFormat('yyyy').format(_bDate));

  static int _tDay = int.parse(DateFormat('dd').format(_tDate));
  static int _tMonth = int.parse(DateFormat('MM').format(_tDate));
  static int _tYear = int.parse(DateFormat('yyyy').format(_tDate));

  static String textRes = "";
  static String summary = "";

  // ignore: must_call_super
  void initState() {
    super.initState();
    _bDate = new DateTime(2019, 05, 25);
  }

  Future<Null> _selectBDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _bDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime(2100));

    if (picked != null && picked != _bDate) {
      setState(() {
        _bDate = picked;
        bDate = DateFormat('dd-MM-yyyy').format(_bDate);

        _bDay = int.parse(DateFormat('dd').format(_bDate));
        _bMonth = int.parse(DateFormat('MM').format(_bDate));
        _bYear = int.parse(DateFormat('yyyy').format(_bDate));
      });
    }
  }

  Future<Null> _selectTDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _tDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime(2100));

    if (picked != null && picked != _tDate) {
      setState(() {
        _tDate = picked;
        tDate = DateFormat('dd-MM-yyyy').format(_tDate);

        _tDay = int.parse(DateFormat('dd').format(_tDate));
        _tMonth = int.parse(DateFormat('MM').format(_tDate));
        _tYear = int.parse(DateFormat('yyyy').format(_tDate));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Date",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
              margin: EdgeInsets.only(left: 16.0),
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 20.0),
                    child: new Text(
                      "From date",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0, top: 20.0),
                    child: new Theme(
                      data: new ThemeData(
                        primaryColor: Colors.black,
                      ),
                      child: new FlatButton(
                          onPressed: () {
                            _selectBDate(context);
                          },
                          color: Colors.white30,
                          shape: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text(
                            bDate,
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              )),
          new Container(
              margin: EdgeInsets.only(left: 16.0),
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 20.0),
                    child: new Text(
                      "To date",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 175.0, top: 20.0),
                    child: new Theme(
                      data: new ThemeData(
                        primaryColor: Colors.black,
                      ),
                      child: new FlatButton(
                          onPressed: () {
                            setState(() {
                              _selectTDate(context);
                            });
                          },
                          color: Colors.white30,
                          shape: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text(
                            tDate,
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.black),
                          )),
                    ),
                  ),
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
                        if (tDate == bDate) {
                          textRes="Date Of Birth Should Not Equal Today's Date";

                          return;
                        }



                        else {
                          if (_bDay > _tDay) {
                            _tMonth = _tMonth - 1;

                            _tDay = _tDay + months[_bMonth - 1];
                          }

                          // if birth month exceeds current month,
                          // then do not count this year and add
                          // 12 to the month so that we can
                          // subtract and find out the difference
                          if (_bMonth > _tMonth) {
                            _tYear = _tYear - 1;
                            _tMonth = _tMonth + 12;
                          }

                          // calculate date, month, year
                          resindays = _tDay - _bDay;

                          resinmonths = _tMonth - _bMonth;

                          resinyears = _tYear - _bYear;

                          totalDays = _tDate.difference(_bDate).inDays;


                          if (resinyears < 0)
                          {
                            textRes="Date Of Birth Should Not Exceed Today's Date";

                            return;
                          }
                          textRes = "Years: ${resinyears} ,Months: ${resinmonths} ,Days: ${resindays}";

                        }
                      });
                    },
                    color: Colors.white30,
                    shape: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    child: new Text(
                      "Result",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: new Text(
                    "Date Difference",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new Text(
                    textRes,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}