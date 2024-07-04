import 'package:flutter/material.dart';



class AnimationCrossFi extends StatefulWidget {
  const AnimationCrossFi({Key? key}) : super(key: key);

  @override
  State<AnimationCrossFi> createState() => _AnimationCrossFiState();
}

class _AnimationCrossFiState extends State<AnimationCrossFi> {

    bool  first=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: Center(
         child:GestureDetector(
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.grey[800],
             ),
             height: 240,
             width: 240,
             child: AnimatedCrossFade(
                 firstChild:  Image.asset("images/hacker.png",height: 250,width: 250,),
                 secondChild: const Center(child: Icon(Icons.computer,size: 100,),),
                 crossFadeState: first? CrossFadeState.showFirst:CrossFadeState.showSecond,
                 duration: const Duration(milliseconds: 500),
             )
           ),
           onTap: (){
               setState(() {
                 first=!first;
               });
            },
         )
      ),
    );
  }
}
