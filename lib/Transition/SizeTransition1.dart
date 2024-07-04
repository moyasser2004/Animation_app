import 'package:flutter/material.dart';


class SizeTransition1 extends StatefulWidget {
  const SizeTransition1({Key? key}) : super(key: key);

  @override
  State<SizeTransition1> createState() => _SizeTransition1State();
}

class _SizeTransition1State extends State<SizeTransition1> with SingleTickerProviderStateMixin {

   late AnimationController _controller;
   late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
     animation = Tween<double>(begin:0,end: 1 ).animate(CurvedAnimation(parent: _controller, curve: Curves.fastLinearToSlowEaseIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void start(){
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: start,
          child: Container(
              height: 400,
              width: 400,
              color: Colors.grey[900],
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: SizeTransition(
                  sizeFactor:animation,
                  child: Image.asset("images/hacker.png"),
                ),
              )
          ),
        )
      ),
    );
  }
}
