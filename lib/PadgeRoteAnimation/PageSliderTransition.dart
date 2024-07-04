import 'package:flutter/cupertino.dart';



class PageSliderTransition extends PageRouteBuilder{
  final dynamic page;
  PageSliderTransition(this.page):super(
      pageBuilder: (context,animation,animationTwo){
        return page;
      },
       transitionsBuilder: (context,animation1,animationTwo,child){
        var animation =Tween<Offset>(begin: const Offset(0,-1) , end:const Offset(0,0)  );
      return SlideTransition(
            position:animation1.drive(animation),
            child: child,
        );
      }
  );
}