import 'package:flutter/material.dart';
import 'package:travel_ui/screens/welcome%20screen/welcomescreen_custom_widgets/single_welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //safe area widget ensure screen does not overlap with other sysytem components like status bar and other sysyrem ui
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) => SingleWelcomeScreen(
            index: index,
          ),
        ),
      ),
    );
  }
}
