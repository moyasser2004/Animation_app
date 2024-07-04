import 'package:flutter/cupertino.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;

  PageScaleTransition(this.page)
      : super(
    pageBuilder: (context, animation, animationTwo) {
      return page;
    },
    transitionsBuilder: (context, animation1, animationTwo, child) {
      var animation = Tween<double>(begin: 0, end: 0.7).animate(
        CurvedAnimation(parent: animation1, curve: Curves.bounceInOut),
      );
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    },
  );
}
