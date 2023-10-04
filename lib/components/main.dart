import 'package:flutter/material.dart';
import 'package:segundoapp/screens/initial_scream.dart';

//import 'package:segundoapp/revisao.dart';

void main() {
  runApp( const MyApp());
}

////void main() {
 // runApp(revisao());
// }
class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 224, 217, 221)),
          useMaterial3: true, 
        ),
        home: const InittialScream(),
        );
  }
}

