 import 'package:flutter/material.dart';

class defaultTextStyle_Transition extends StatefulWidget {
   const defaultTextStyle_Transition({Key? key}) : super(key: key);

   @override
   State<defaultTextStyle_Transition> createState() => _defaultTextStyle_TransitionState();
 }

 class _defaultTextStyle_TransitionState extends State<defaultTextStyle_Transition> with SingleTickerProviderStateMixin {
  
   late AnimationController _controller;
   late Animation<double> _animation;

   @override
   void initState() {
     super.initState();
     _controller = AnimationController(vsync: this,duration: const Duration(seconds: 1));
     _animation=Tween<double>(begin:0,end: 1 ).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate));
   }

   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
  TextStyle text1=const TextStyle(
  fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black
);

  TextStyle text2=const TextStyle(
  fontSize: 20,fontWeight: FontWeight.normal,color: Colors.red
);

  var change=false;

    void changed(){
    if(change){
      _controller.reverse();
      change=!change;
    }else {
      _controller.forward();
      change=!change;

    }
    }

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
        title: const Text("Default Text Style Transition"),
      ),
       body: Center(
          child: DefaultTextStyleTransition(
            style:_animation.drive(TextStyleTween(begin:text1 ,end:text2 )) ,
            child:const Text("Hello world"),
          ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: changed,
         child:const Icon(Icons.play_arrow),
       ),
     );
   }
 }
