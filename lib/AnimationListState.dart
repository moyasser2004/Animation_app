import 'package:flutter/material.dart';



class AnimationListState extends StatefulWidget {

  @override
  State<AnimationListState> createState() => _AnimationListStateState();
}

class _AnimationListStateState extends State<AnimationListState> {

  GlobalKey<AnimatedListState> key=  GlobalKey<AnimatedListState>();
    List<String> test=[];

     void add(){
       test.insert(0,"this is test List ${test.length}");
       key.currentState!.insertItem(0);
     }

     void remove(int index){
          setState(() {
            test.removeAt(index);
            key.currentState!.removeItem(index,
                    (context, animation) {
                  return Container();
                }
            );
          });
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation List State"),
     ),
       body:AnimatedList(
           reverse: true,
           physics: const BouncingScrollPhysics(),
           padding: const EdgeInsets.all(10),
           key: key,
          itemBuilder: (BuildContext context, int index, Animation<double> animation ){
            return Padding(
              padding: const EdgeInsets.all(5),
              child: SizeTransition(
                  sizeFactor: animation,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child:Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(test[index],style: const TextStyle(fontSize: 18),),
                            )
                         ),
                        Expanded(
                            child:IconButton(
                              onPressed: (){
                                remove(index);
                              },
                              icon: const Icon(Icons.delete_outline),
                            ),
                         ),
                      ],
                    ),
                  )
                )
              ),
            );
             }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          add();
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
       );
  }
}
