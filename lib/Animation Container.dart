import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class AnimatinContainer extends StatefulWidget {
    const AnimatinContainer({Key? key}) : super(key: key);

    @override
    State<AnimatinContainer> createState() => _AnimatinContainerState();
  }

  class _AnimatinContainerState extends State<AnimatinContainer> {
     double h=300.0;
     double w=300.0;
     Color c=Colors.black;
     bool smale=false;

     void change1(){
       setState(() {
        h=150.0;
        w=150.0;
        c=Colors.orangeAccent;
        smale=true;
       });
     }

     void change2(){
       setState(() {
         setState(() {
           h = 300.0;
           w = 300.0;
           c = Colors.black;
           smale=false;
         });
       });
     }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Animation Container"),
          ),
        floatingActionButton: FloatingActionButton(
             onPressed: (){
            if(h==150){
             change2();
            }else{
              change1();
                   }
             },
          child:smale? Icon(Icons.add):Icon(Icons.remove),

         ),
        body: Center(
          child: GestureDetector(
            onTap: () {
                if (h == 150) {
                 change2();
                } else {
                  change1();
                }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width:h ,
              height:w,
              decoration: BoxDecoration(
                color:c,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("images/hacker.png"),
            ),
          ),
        ),
         );
    }
  }
