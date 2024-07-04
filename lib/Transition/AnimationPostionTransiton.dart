import 'package:flutter/material.dart';



class AnimationtPositon_Transitiion extends StatefulWidget {
    const AnimationtPositon_Transitiion({Key? key}) : super(key: key);

    @override
    State<AnimationtPositon_Transitiion> createState() => _AnimationtPositon_TransitiionState();
  }

  class _AnimationtPositon_TransitiionState extends State<AnimationtPositon_Transitiion> with SingleTickerProviderStateMixin {

    late AnimationController _controller;
    late Animation<RelativeRect>  _animation;

    @override
    void initState() {
      super.initState();
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500)
      );

      _animation = RelativeRectTween(
        end: const RelativeRect.fromLTRB(50, 100, 50, 100),
        begin:const RelativeRect.fromLTRB(0, 0, 0, 0),
      ).animate(_controller);
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

    void end(){
      _controller.reverse();
    }
  
    bool isStart=true;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(" Position Direction Transition"),
        ),
        body: Stack(
          children: [
            AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                   return  PositionedDirectional(
                     top:_animation.value.top ,
                     bottom: _animation.value.bottom,
                     end: _animation.value.right,
                     start: _animation.value.left,
                       child: Container(
                         height: 100,
                         width: 100,
                         color: Colors.deepOrange,
                       ),
                   );
                } ,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           setState(() {
             isStart?start():end();
             isStart=!isStart;
           });
          },
           child: const Icon(Icons.replay),
        ),

      );
    }
  }
