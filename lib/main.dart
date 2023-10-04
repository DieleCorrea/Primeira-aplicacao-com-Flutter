import 'package:flutter/material.dart';
import 'package:segundoapp/initial_scream.dart';

//import 'package:segundoapp/revisao.dart';

void main() {
  runApp( MyApp());
}

////void main() {
 // runApp(revisao());
// }
class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 224, 217, 221)),
          useMaterial3: true, 
        ),
        home: InittialScream(),
        );
  }
}

