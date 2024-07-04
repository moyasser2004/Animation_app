import 'dart:math';

import 'package:flutter/material.dart';


class AnimationBuilder extends StatefulWidget {
  const AnimationBuilder({Key? key}) : super(key: key);

  @override
  State<AnimationBuilder> createState() => _AnimationBuilderState();
}

class _AnimationBuilderState extends State<AnimationBuilder> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 10))..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Animation Builder"),
      ) ,
      body:Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
                return Transform.rotate(
                    angle: _controller.value*(pi),
                  child: const Image(image: AssetImage("images/hacker.png"),width: 200,height: 200,),
                );
             },
        ),
      ) ,
      );
  }
}
