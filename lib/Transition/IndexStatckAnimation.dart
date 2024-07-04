

import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
      int curentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Index Stack"),
      ),
      body: IndexedStack(
        index: curentIndex,
        children: [
          Container(
            color: Colors.black,
            height: double.infinity,
            child: Image.asset("images/hacker.png"),
          ),
          Container(
            color: Colors.red,
              height: double.infinity,
              child: Image.asset("images/tom.png")
          ),
          Container(
            color: Colors.blue,
              height: double.infinity,
              child: Image.asset("images/gery.png")
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(curentIndex==0){
              curentIndex=1;
            }else if(curentIndex==1){
              curentIndex=2;
            }else{
              curentIndex=0;
            }

          });
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.navigate_next,size: 35,),
      ),
    );
  }
}
