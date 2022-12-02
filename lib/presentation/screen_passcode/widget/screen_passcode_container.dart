import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenPasscodecontainer extends StatelessWidget {
  ScreenPasscodecontainer({super.key});
  TextEditingController one = new TextEditingController();
  TextEditingController two = new TextEditingController();
  TextEditingController three = new TextEditingController();
  TextEditingController four = new TextEditingController();
  String originalOTP = "7667";
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 15,
        fit: FlexFit.tight,
        child: Expanded(
          child: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: codebox(one: one),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: codebox(one: one),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: codebox(one: one),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: codebox(one: one),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: codebox(one: one),
              ),
            ]),
          ),
        ));
  }
}

class codebox extends StatelessWidget {
  const codebox({
    Key? key,
    required this.one,
  }) : super(key: key);

  final TextEditingController one;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      // height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        showCursor: false,
        controller: one,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSaved: (pin1) {},
        style: TextStyle(color: Colors.blue, fontSize: 2),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
