import 'package:animations/Animation%20Container.dart';
import 'package:animations/Animation1.dart';
import 'package:animations/AnimationBuilder.dart';
import 'package:animations/AnimationCrossFaid.dart';
import 'package:animations/AnimationDefaultTextStyle.dart';
import 'package:animations/AnimationElevation.dart';
import 'package:animations/AnimationListState.dart';
import 'package:animations/AnimationOpacity.dart';
import 'package:animations/AnimationPaddibg.dart';
import 'package:animations/AnimationPositionDirection.dart';
import 'package:animations/AnimationPostioned.dart';
import 'package:animations/AnimationSwitching.dart';
import 'package:animations/PadgeRoteAnimation/PadgeFadeAnimation.dart';
import 'package:animations/PadgeRoteAnimation/PageRotationTransition.dart';
import 'package:animations/PadgeRoteAnimation/PageScaleTransiton.dart';
import 'package:animations/PadgeRoteAnimation/PageSizeTransition.dart';
import 'package:animations/PadgeRoteAnimation/PageSliderTransition.dart';
import 'package:animations/PadgeRoteAnimation/PageTwo.dart';
import 'package:animations/Shap/Lottie.dart';
import 'package:animations/Shap/Rive.dart';
import 'package:animations/Transition/AnimationPostionTransiton.dart';
import 'package:animations/Transition/ButtonShap.dart';
import 'package:animations/Transition/IndexStatckAnimation.dart';
import 'package:animations/Transition/RotationTransition.dart';
import 'package:animations/Transition/SizeTransition1.dart';
import 'package:animations/Transition/defaultTextStyleTransition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AnimatedCrossFade1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    routes: {
      "one": (context) => const Animation1(),
      "two": (context) => const AnimatinContainer(),
      "three": (context) => AnimationDefaultTextStyle(),
      "four": (context) => AnimationOpacity(),
      "five": (context) => AnimationPadding(),
      "six": (context) => AnimationElevation(),
      "seven": (context) => const AnimationPostioned(),
      "eight": (context) => const AnimstionPositiondirec(),
      "night": (context) => const AnimationCrossFi(),
      "ten": (context) => const AnimationSwetching(),
      "eleven": (context) => AnimationListState(),
      "twelve": (context) => const SizeTransition1(),
      "13": (context) => const Rotation_Transition(),
      "14": (context) => const Rotation_Button(),
      "15": (context) => const AnimationBuilder(),
      "16": (context) => const AnimationtPositon_Transitiion(),
      "17": (context) => const defaultTextStyle_Transition(),
      "18": (context) => const test(),
      "19": (context) => const AnimationCrossFade(),
    },
    theme: ThemeData(
        backgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
            elevation: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: Colors.black),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red)))),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animations",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("one");
                },
                child: const Text("Animation Alignment 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("two");
                },
                child: const Text("Animation Container 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("three");
                },
                child: const Text("Animation Text 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("four");
                },
                child: const Text("Animation Opacity 4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("five");
                },
                child: const Text("Animation Padding 5")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("six");
                },
                child: const Text("Animation Elevation 6")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("seven");
                },
                child: const Text("Animation Positioned 7")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("eight");
                },
                child:
                    const Text("Animation Positioned Direction 8")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("night");
                },
                child: const Text("Animation Cross Fad 9")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("ten");
                },
                child: const Text("Animation Switching 10")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("eleven");
                },
                child: const Text("Animation List State 11")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("twelve");
                },
                child: const Text("Animation Size Transition 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("13");
                },
                child:
                    const Text("Animation  Rotation Transition 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("14");
                },
                child: const Text("Animation  Rotation Button 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("15");
                },
                child: const Text("Animation  Builder 12")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("16");
                },
                child: const Text("Position Direction Transition4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("17");
                },
                child: const Text("Default Text Style Transition 5")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("18");
                },
                child: const Text("Index Stack 6")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageFadeAnimation(const PageTwo()));
                },
                child: const Text("Page Fade transition")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageScaleTransition(const PageTwo()));
                },
                child: const Text(" Page Scale transition")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageRotationTransition(const PageTwo()));
                },
                child: const Text(" Page Rotation transition")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSliderTransition(const PageTwo()));
                },
                child: const Text(" Page Slider transition")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransition(const PageTwo()));
                },
                child: const Text(" Page Size Transition")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransition(const Test()));
                },
                child: const Text("Lottie Animations ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransition(const Test2()));
                },
                child: const Text(" Rive Animation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("19");
                },
                child: const Text("Animated cross Axis Fade")),
          ],
        ),
      ),
    );
  }
}
