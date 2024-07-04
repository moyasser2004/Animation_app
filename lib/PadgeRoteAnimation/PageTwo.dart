import 'package:flutter/material.dart';



class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Page two"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(" Go Back"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
