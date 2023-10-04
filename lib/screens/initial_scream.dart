import 'package:flutter/material.dart';
import 'package:segundoapp/components/task.dart';
class InittialScream extends StatefulWidget {

  const InittialScream({super.key});
  
  @override
  State<InittialScream> createState() => _InittialScreamState();
}

class _InittialScreamState extends State<InittialScream> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: Container(),
            title: Text('Tarefas'),
          ),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: Duration(milliseconds: 800),
            child: ListView(
              children: [
                Task(
                    'Bike',
                    'assets/images/bike.jpg',
                    2),
                Task(
                    'Academia',
                    'assets/images/bixinho.png',
                    3),
                Task(
                    'Janta',
                    'assets/images/img3.jpg',
                    2),
                Task('Ingles',
                    'assets/images/img4.jpeg', 4),
                Task(
                    'Consulta',
                    'assets/images/img5.jpg',
                    1),
                    SizedBox(height: 80,)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            setState(() {
                opacidade = !opacidade;
            });
          
          },
          child: Icon(Icons.remove_red_eye),
          ),
        );
  }
}