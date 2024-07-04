import 'package:flutter/material.dart';



class AnimationElevation extends StatefulWidget {
  @override
  State<AnimationElevation> createState() => _AnimationElevationState();
}

class _AnimationElevationState extends State<AnimationElevation> {
  double elev =0.0;
  bool isElevation=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           setState(() {
             isElevation?elev=50.0:elev=0.0;
             isElevation=!isElevation;
           });
        },
        child:const Icon(Icons.elevator_outlined) ,
      ),
      body:Center(
        child: AnimatedPhysicalModel(
          color: Colors.black.withOpacity(.85),
          curve: Curves.bounceInOut,
          duration: const Duration(milliseconds: 400),
          shape: BoxShape.circle,
          elevation: elev,
          shadowColor: Colors.red.shade800,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("images/hacker.png"),
            ),
          ),

        )
      )
    );
  }
}
