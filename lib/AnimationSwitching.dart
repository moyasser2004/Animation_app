import 'package:flutter/material.dart';



class AnimationSwetching extends StatefulWidget {
   const AnimationSwetching({Key? key}) : super(key: key);

   @override
   State<AnimationSwetching> createState() => _AnimationSwetchingState();
 }

 class _AnimationSwetchingState extends State<AnimationSwetching> {
    bool chang=true;
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar:AppBar(
               title: const Text("Animation Switching"),
            ) ,
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             chang=!chang;
           });
         },
         backgroundColor: Colors.black,
         child: const Icon(Icons.published_with_changes_rounded),
       ),
       body:  Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 700),
              switchInCurve: Curves.bounceInOut ,
              switchOutCurve:Curves.bounceInOut ,
              child: chang?const CircularProgressIndicator():Icon(Icons.import_export_rounded,
                  size: 60,color: Colors.blueAccent.shade400
              ),
            ),
           ),

        );
   }
 }
