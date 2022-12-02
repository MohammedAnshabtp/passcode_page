import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/blank.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/screen_back.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/screen_bottom.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/screen_lock.dart';
import 'package:passcode_page/presentation/screen_passcode/widget/screen_passcode_container.dart';

class ScreenPasscode extends StatelessWidget {
  const ScreenPasscode({super.key});

  @override
  Widget build(BuildContext context) {
    double heightOfScreen = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Flex(
          direction: Axis.vertical,
          children: [
            Screenback(),
            ScreenLock(),
            ScreenPasscodecontainer(),
            Blank(),
            Screenbottom(),
          ],
        ),
      ),
    );
  }
}
