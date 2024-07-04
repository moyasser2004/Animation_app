import 'package:flutter/material.dart';


class AnimationOpacity extends StatefulWidget {
  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {
   bool opacity=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(opacity?Icons.remove_red_eye:Icons.panorama_fish_eye_outlined),
        onPressed: (){
          setState(() {
            opacity=!opacity;
          });
        },
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             AnimatedOpacity(
                 opacity: opacity?1.0:0.0,
                 duration: const Duration(milliseconds: 900),
                 curve: Curves.easeInOut,
               child:  const Image(image: AssetImage("images/hacker.png"),height: 300,width: 300,)
             ),
              AnimatedOpacity(
                 opacity: opacity?1.0:0.0,
                 duration: const Duration(milliseconds: 700),
                 curve: Curves.bounceInOut,
                child:  const Text(" Hacker ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
            ],
        ),
      ),
    );
  }
}
