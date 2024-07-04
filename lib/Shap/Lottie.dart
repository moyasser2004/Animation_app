import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
   int CurrentIndex=0;
   List<String> animation=[
     "images/tigger.json",
     "images/car.json",
     "images/bird.json",
     "images/lf30_jprywobb.json",
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Shape"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:CurrentIndex,
        onTap: (vall){
          setState(() {
            CurrentIndex=vall;
          });
        },
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.first_page),label:"tiger" ),
          BottomNavigationBarItem(icon:Icon(Icons.severe_cold),label:"car" ),
          BottomNavigationBarItem(icon:Icon(Icons.save),label:"bird" ),
          BottomNavigationBarItem(icon:Icon(Icons.beach_access),label:"beach" ),
        ],
        backgroundColor: Colors.red.shade500,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.black,
         iconSize: 30,
      ),
      body: Center(
        child: Lottie.asset(animation[CurrentIndex]),
      ),
    );
  }
}

