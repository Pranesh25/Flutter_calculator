import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var num1, num2 = 0, result = 0;
  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 / num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  // void reverse() {
  //   setState(() {
  //     num1 = num2;
  //     num2 = num1;
  //     result = 0;
  //     t1 = "$num2" as TextEditingController;
  //     t2 = "$num1" as TextEditingController;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "output : $result",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter number 1",
                ),
                controller: t1,
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter number 2",
                ),
                controller: t2,
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: add,
                    child: Text("Press to Add (+)"),
                  ),
                  ElevatedButton(
                    onPressed: sub,
                    child: Text("Press to Sub (-)"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: mul,
                    child: Text("Press to Mul (*)"),
                  ),
                  ElevatedButton(
                    onPressed: div,
                    child: Text("Press to Div (/)"),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: clear,
                    child: Text("Press to reset"),
                  ),
                  // ElevatedButton(
                  //   onPressed: reverse,
                  //   child: Text("Press to reverse"),
                  // ),
                ],
              ),
            ],
          )),
    );
  }
}
