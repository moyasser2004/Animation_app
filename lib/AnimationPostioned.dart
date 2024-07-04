import 'package:flutter/material.dart';



class AnimationPostioned extends StatefulWidget {
  const AnimationPostioned({Key? key}) : super(key: key);

  @override
  State<AnimationPostioned> createState() => _AnimationPostionedState();
}

class _AnimationPostionedState extends State<AnimationPostioned> {
    bool isAbered= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          setState(() {
            isAbered=!isAbered;
          });
        },
        child:  Icon(isAbered?Icons.remove:Icons.add,size: 20,color: Colors.white,),
      ),
      appBar: AppBar(
        title:  const Text("Animation Positioned"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
              AnimatedPositioned(
                  top: isAbered?MediaQuery.of(context).size.height-290:MediaQuery.of(context).size.height-170,
                  right: isAbered?0:10,
                  duration:const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                     radius: 22,
                    backgroundColor: const Color(0xff0a2f80),
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: (){},
                      icon:  const Icon(Icons.settings,color: Colors.white,),
                    ),
                  )
              ),
              AnimatedPositioned(
                  top:isAbered?MediaQuery.of(context).size.height-245:MediaQuery.of(context).size.height-170,
                  right:isAbered? 73:10,
                  duration:const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                     radius: 22,
                    backgroundColor: Colors.red.shade700,
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: (){},
                      icon:  const Icon(Icons.search,color: Colors.white,),
                    ),
                  )
              ),
              AnimatedPositioned(
                  top: isAbered?MediaQuery.of(context).size.height-170:MediaQuery.of(context).size.height-170,
                  right: isAbered?120:10,
                  duration:const Duration(milliseconds: 500),
                  curve: Curves.easeInQuart,
                  child: CircleAvatar(
                     radius: 22,
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.home,color: Colors.white,),
                    ),
                  )
              ),
             ],
        ),
      )
       );
  }
}
