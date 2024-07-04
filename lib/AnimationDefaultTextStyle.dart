import 'package:flutter/material.dart';



class AnimationDefaultTextStyle extends StatefulWidget {

    @override
    State<AnimationDefaultTextStyle> createState() => _AnimationDefaultTextStyleState();
  }

  class _AnimationDefaultTextStyleState extends State<AnimationDefaultTextStyle> {

      double fontSize=30;
      Color color=Colors.black;

    void minus(){
      setState(() {
        fontSize=30;
        color=Colors.blueAccent;
      });
    }

    void plus(){
      setState(() {
        fontSize=60;
        color=Colors.black;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Animation Text"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AnimatedDefaultTextStyle(
                  style: TextStyle(
                      fontSize:fontSize ,
                      color:color
                  ),
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.bounceOut,
                  child: const Text("Hello World"),
              ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){minus();}, icon: const Icon(Icons.remove)),
                const SizedBox(width: 60,),
                IconButton(onPressed: (){plus();}, icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      );
    }
  }
