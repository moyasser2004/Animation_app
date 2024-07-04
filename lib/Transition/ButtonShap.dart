import 'package:flutter/material.dart';



class Rotation_Button extends StatefulWidget {
  const Rotation_Button({Key? key}) : super(key: key);

  @override
  State<Rotation_Button> createState() => _Rotation_TransitionState();
}

class _Rotation_TransitionState extends State<Rotation_Button> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween<double>(end: 1, begin: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void getStart() {
    _controller.reset();
    _controller.forward();
  }

  bool isAbered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            _controller.reset();
            _controller.forward();
            setState(() {
              isAbered = !isAbered;
            });
          },
          child: RotationTransition(
                      turns:animation ,
                        child: Icon(isAbered ? Icons.format_line_spacing : Icons.home , size: 25,
                             color: Colors.white,),
                       )
        ),
        appBar: AppBar(
          title: const Text("Animation Positioned"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              AnimatedPositioned(
                  top: isAbered ? MediaQuery .of(context).size.height - 290 : MediaQuery.of(context).size.height - 170,
                  right: isAbered ? 0 : 10,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: const Color(0xff0a2f80),
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.settings, color: Colors.white,),
                    ),
                  )
              ),
              AnimatedPositioned(
                  top: isAbered ? MediaQuery.of(context).size .height - 245 : MediaQuery.of(context).size.height - 170,
                  right: isAbered ? 73 : 10,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.red.shade700,
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Colors.white,),
                    ),
                  )
              ),
              AnimatedPositioned(
                  top: isAbered ? MediaQuery
                      .of(context)
                      .size
                      .height - 170 : MediaQuery
                      .of(context)
                      .size
                      .height - 170,
                  right: isAbered ? 120 : 10,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.orangeAccent.shade200,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person, color: Colors.white,),
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}




