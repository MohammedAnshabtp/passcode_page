import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenLock extends StatelessWidget {
  const ScreenLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 90,
      fit: FlexFit.tight,
      child: Expanded(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Container(
                //  height: 10,
                child: Image.asset('images/passcode.png'),
              ),
            ),
            // Flexible(
            //   child: Container(),
            //   flex: 5,
            // ),
            SizedBox(height: 10),
            Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Container(
                child: Text(
                  'Set Passcode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Flexible(
            //   child: Container(),
            //   flex: 5,
            // ),
            Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Text(
                "Create an account to Ykipp get all \n features",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
