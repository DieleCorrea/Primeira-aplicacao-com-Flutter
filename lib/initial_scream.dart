import 'package:flutter/material.dart';
import 'package:segundoapp/task.dart';
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
                    'Estudar hoje a noite no liberato aquela aula chata de gestão',
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                    2),
                Task(
                    'Academia',
                    'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
                    3),
                Task(
                    'Janta',
                    'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                    2),
                Task('Ingles',
                    'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg', 4),
                Task(
                    'Consulta',
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                    1),
                Task(
                    'Arrumar roupas',
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                    5),
                Task(
                    'Remedio',
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                    3),
                    Container()
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