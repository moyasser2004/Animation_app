import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  State<Test2> createState() => _TestState();
}

class _TestState extends State<Test2> {
  int currentIndex = 0;
  List<String> animations = [
    "assets/images/bear.riv",
    "assets/images/girl.riv",
    "assets/images/rating.riv",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Shape"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: "Bear"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Girl"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rating"),
        ],
        backgroundColor: Colors.red.shade500,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.black,
        iconSize: 30,
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            child: Lottie.asset(
              animations[currentIndex],
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
