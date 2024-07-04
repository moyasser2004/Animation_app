import 'package:flutter/material.dart';




class AnimstionPositiondirec extends StatefulWidget {
   const AnimstionPositiondirec({Key? key}) : super(key: key);

   @override
   State<AnimstionPositiondirec> createState() => _AnimstionPositiondirecState();
 }

 class _AnimstionPositiondirecState extends State<AnimstionPositiondirec> {
     double Top=0;
     //top down

     double Start=0;
     //right left

     void moveLeft() {
       setState(() {
         Start -= 50;
         if (Start< 0) {
           Start = 0;
         }
       });
     }

     void moveRight() {
       setState(() {
         Start += 50;
         if (Start > MediaQuery.of(context).size.width - 120) {
           Start = MediaQuery.of(context).size.width - 120;
         }
       });
     }

     void moveUp() {
       setState(() {
         Top -= 50;
         if (Top < 0) {
           Top = 0;
         }
       });
     }

     void moveDown() {
       setState(() {
         Top += 50;
         if (Top > MediaQuery.of(context).size.height - 320) {
           Top = MediaQuery.of(context).size.height - 320;
         }
       });
     }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           title: const Text("Animation Positioned Direction"),
         ),
          body:Stack(
            children: [
            AnimatedPositionedDirectional(
                top:Top ,
                start:Start ,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 500),
                width: 140,
                height: 130,
             child: Image.asset("images/car.png"),
              ),
               Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(7),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: (){
                            moveUp();
                          },
                          icon: const Icon(Icons.arrow_upward_outlined,color: Colors.white,),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: (){
                                moveLeft();
                              },
                              icon: const Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                        ),
                        const SizedBox(width: 55,),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: (){
                                moveRight();
                              },
                              icon: const Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(7),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: (){
                            moveDown();
                          },
                          icon: const Icon(Icons.arrow_downward_outlined,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ) ,
        );
   }
 }
