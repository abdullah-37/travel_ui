import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:travel_ui/models/welcome_screen_models.dart';

class SingleWelcomeScreen extends StatelessWidget {
  const SingleWelcomeScreen({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WelcomeModel screen = welcomescreendata[index];

    return SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  //First text
                  FadeInLeft(
                    duration: const Duration(milliseconds: 600),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        screen.firsttext,
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),

                  //Second text
                  FadeInRight(
                    duration: const Duration(milliseconds: 600),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        screen.secondtext,
                        style: const TextStyle(
                          fontSize: 30,
                          // fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // description text
                  FadeInUp(
                    duration: const Duration(milliseconds: 600),
                    child: SizedBox(
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          screen.discription,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  // Lets go button
                  FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 129, 66, 196),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            'Lets Go',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // large Image
                ],
              ),
            ),
            FadeInUpBig(
              duration: const Duration(milliseconds: 1300),
              child: ShapeOfView(
                height: size.height * 0.55,
                shape: DiagonalShape(
                  position: DiagonalPosition.Top,
                  direction: DiagonalDirection.Right,
                  angle: DiagonalAngle.deg(angle: 5),
                ),
                child: Image.asset(
                  screen.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
