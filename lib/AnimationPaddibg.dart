import 'package:flutter/material.dart';


class AnimationPadding extends StatefulWidget {
    @override
    State<AnimationPadding> createState() => _AnimationPaddingState();
  }

  class _AnimationPaddingState extends State<AnimationPadding> {

     bool isExpanded=true;
     double _padding=5;
     List<String> Images=[
       "images/hacker.png",
       "images/hacker.png",
       "images/hacker.png",
       "images/hacker.png",
     ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(isExpanded?Icons.expand:Icons.expand_circle_down_outlined),
          onPressed: (){
            setState(() {
              isExpanded=!isExpanded;
              isExpanded?_padding=5 :_padding=40 ;
            });
          },
        ),

        body: Center(
          child: GridView.count(
            padding:const EdgeInsets.fromLTRB(0, 200,0, 200),
              crossAxisCount: 2,
            children: [
              ...List.generate(
                  Images.length,
                (index){
                    return AnimatedPadding(
                        padding:EdgeInsets.all(_padding),
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        child:Image(
                          image: AssetImage(Images[index]),
                          height: 150,
                          width: 150,
                        ) ,
                    );
             })
            ],
          ),
        ),
          );
    }
  }
