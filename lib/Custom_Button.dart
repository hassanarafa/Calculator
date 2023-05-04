import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  Custom_Button(
      {required this.ButtonText,
      required this.function,
      required this.Button_Color});
  var function;
  String? ButtonText;
  Color? Button_Color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 90,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              elevation: 5,
              backgroundColor: Button_Color,
            ),
            onPressed: function,
            child: Text(
              ButtonText!,
              style: TextStyle(fontSize: 35),
            )));
  }
}
