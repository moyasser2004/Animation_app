import 'package:flutter/cupertino.dart';



class PageRotationTransition extends PageRouteBuilder{
  final dynamic page;
  PageRotationTransition(this.page):super(
    pageBuilder: (context,animation,animationTwo){
      return page;
    },
  transitionsBuilder: (context,animation1,animationTwo,child){
      var animation=Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: animation1, curve: Curves.decelerate,));
      return RotationTransition(
        alignment: Alignment.center,
          turns: animation,
          child: child,
      );
    }
  );
}