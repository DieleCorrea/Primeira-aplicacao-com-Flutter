import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 224, 217, 221)),
        useMaterial3: true,
      ),
      home: Container(
        
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.pink,width: 100,height: 100,),
                  Container(color: Colors.blue,width: 50,height: 50,),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.blue,width: 100,height: 100,),
                  Container(color: Colors.pink,width: 50,height: 50,),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(color: Colors.cyan,width: 50,height: 50,),
                 Container(color: Colors.pinkAccent,width: 50,height: 50,),
                 Container(color: Colors.purple,width: 50,height: 50,),
                ],
              )
            ],
            ),
      )
          
    );
  }
}
