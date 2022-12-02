import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/values.dart';

class Screenbottom extends StatelessWidget {
  const Screenbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: valuesOfScreen.flexValue,
      fit: FlexFit.tight,
      child: Expanded(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text('Having trouble in logging? Contact')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
