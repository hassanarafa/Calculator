import 'package:flutter/material.dart';
import 'Custom_Button.dart';
import 'ThemeData.dart';

bool theme = false;
void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "0";
  String finalresult = " ";
  double num1 = 0.0;
  double num2 = 0.0;
  String operation = "";

  buttomOnpressed(String btnVal) {
    if (btnVal == "AC") {
      finalresult = " ";
      num1 = 0.0;
      num2 = 0.0;
      operation = "";
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "*" ||
        btnVal == "/") {
      num1 = double.parse(finalresult);
      operation = btnVal;
      finalresult = " ";
      result = result + btnVal;
    } else if (btnVal == "-/+") {
      if (result.toString().contains("-")) {
        result.toString().substring(0);
        finalresult = result;
      } else {
        result = ("-") + result;
        finalresult = result;
      }
    } else if (btnVal == ".") {
      if (finalresult.contains(".")) {
      } else {
        finalresult = finalresult + btnVal;
      }
    } else if (btnVal == "=") {
      num2 = double.parse(result);
      if (operation == "+") {
        finalresult = (num1 + num2).toString();
      } else if (operation == "-") {
        finalresult = (num1 - num2).toString();
      } else if (operation == "*") {
        finalresult = (num1 * num2).toString();
      } else if (operation == "/") {
        finalresult = (num1 / num2).toString();
      }
    } else if (btnVal == "%") {
      num2 = double.parse(result);
      finalresult = (num2 / 100).toString();
    } else {
      finalresult = finalresult + btnVal;
    }
    if (finalresult != " ") {
      setState(() {
        result = double.parse(finalresult).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme ? darkmode : lightmode,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    theme = !theme;
                  });
                },
                icon: Icon(Icons.dark_mode_outlined))
          ],
          centerTitle: true,
          title: Text("Simple Calculator"),
        ),
        body: Column(children: [
          Expanded(
              flex: 1,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Text(
                        (finalresult == " ") ? "0" : finalresult,
                        style: TextStyle(fontSize: 40),
                      ),
                    ]),
              )),
          SizedBox(
            height: 30,
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                                width: 90,
                                height: 90,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    elevation: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      finalresult = "0";
                                    });
                                    buttomOnpressed("AC");
                                  },
                                  child: Text(
                                    "AC",
                                    style: TextStyle(fontSize: 40),
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "1",
                                function: () {
                                  buttomOnpressed("1");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "4",
                                function: () {
                                  buttomOnpressed("4");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "7",
                                function: () {
                                  buttomOnpressed("7");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: ".",
                                function: () {
                                  buttomOnpressed(".");
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Custom_Button(
                                Button_Color: Colors.blue,
                                ButtonText: "%",
                                function: () {
                                  buttomOnpressed("%");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "2",
                                function: () {
                                  buttomOnpressed("2");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "5",
                                function: () {
                                  buttomOnpressed("5");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "8",
                                function: () {
                                  buttomOnpressed("8");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "0",
                                function: () {
                                  buttomOnpressed("0");
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Custom_Button(
                                Button_Color: Colors.blue,
                                ButtonText: "/",
                                function: () {
                                  buttomOnpressed("/");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "3",
                                function: () {
                                  buttomOnpressed("3");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "6",
                                function: () {
                                  buttomOnpressed("6");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "9",
                                function: () {
                                  buttomOnpressed("9");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.grey[400],
                                ButtonText: "-/+",
                                function: () {
                                  buttomOnpressed("-/+");
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Custom_Button(
                                Button_Color: Colors.blue,
                                ButtonText: "*",
                                function: () {
                                  buttomOnpressed("*");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.blue,
                                ButtonText: "-",
                                function: () {
                                  buttomOnpressed("-");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Custom_Button(
                                Button_Color: Colors.blue,
                                ButtonText: "+",
                                function: () {
                                  buttomOnpressed("+");
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 100,
                                height: 190,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: OvalBorder(),
                                      backgroundColor: Colors.green,
                                    ),
                                    onPressed: () {
                                      buttomOnpressed("=");
                                    },
                                    child: Text(
                                      "=",
                                      style: TextStyle(fontSize: 35),
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
