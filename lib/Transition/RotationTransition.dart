import 'package:flutter/material.dart';



class Rotation_Transition extends StatefulWidget {
  const Rotation_Transition({Key? key}) : super(key: key);

  @override
  State<Rotation_Transition> createState() => _Rotation_TransitionState();
}

class _Rotation_TransitionState extends State<Rotation_Transition> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 5));
     animation=Tween<double>(end:5,begin:0 ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
    void getStart(){
      _controller.reset();
      _controller.forward();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition"),
      ),
      body: Center(
          child: RotationTransition(
            turns:animation ,
            child: Container(
                height: 300,
                width: 300,
                color:Colors.grey[400] ,
                child:const Icon(Icons.person,size: 200,)
            ),
          )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: getStart,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}

