import 'package:calculator/models/Calculate.dart';
import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumericButton extends StatelessWidget {
  final number;
  const NumericButton({Key key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 55.0,
      splashColor: Colors.black12,
      onPressed: () {
        controller.text += number.toString();
        print('text:' + text);
        var operand;
        operand =
            controller.text.substring(text.length, controller.text.length);
        print('operand:' + operand);
        try {
          operand = int.parse(operand);
        } catch (e) {
          operand = double.parse(operand);
        }
        if (operation != null) {
          print('result:' + calculate(operation, operand).toString());
        }
      },
      icon: Text(
        number.toString(),
        style: GoogleFonts.openSans(
          fontStyle: FontStyle.normal,
          fontSize: 40.0,
        ),
      ),
    );
  }
}
