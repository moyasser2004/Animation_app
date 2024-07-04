import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({Key? key}) : super(key: key);

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  int tom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Animation1",
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(tom > 8){
              tom = 0;
            }else{
              tom += 1;
            }
          });
        },
        child: const Icon(
          Icons.published_with_changes_rounded,
          size: 20,
        ),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getAlign(tom),
            duration: const Duration(milliseconds: 400),
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
              child: Image.asset("images/tom.png"),
            ),
          ),
          AnimatedAlign(
            alignment: getAlign(tom + 1),
            duration: const Duration(milliseconds: 350),
            child: Container(
              color: Colors.transparent,
              height: 100,
              width: 100,
              child: Image.asset("images/gery.png"),
            ),
          ),
        ],
      ),
    );
  }
}

Alignment getAlign(int num) {
  switch (num) {
    case 1:
      return Alignment.topCenter;
    case 2:
      return Alignment.topRight;
    case 3:
      return Alignment.centerLeft;
    case 4:
      return Alignment.center;
    case 5:
      return Alignment.centerRight;
    case 6:
      return Alignment.bottomLeft;
    case 7:
      return Alignment.bottomCenter;
    case 8:
      return Alignment.bottomRight;
    default:
      return Alignment.topLeft;
  }
}
