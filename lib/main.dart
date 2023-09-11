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
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 224, 217, 221)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: Container(
            color: Colors.pink,
            child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                  height: 140,
                ),
                Container(
                  color: Colors.white30,
                  height: 100,
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}
