import 'package:flutter/material.dart';
//import 'package:segundoapp/revisao.dart';

void main() {
  runApp(const MyApp());
 }
// void main() {
//   runApp(revisao());
// } 
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
            leading: Container(),
            title: Text('Tarefas'),
          ),
          body: ListView(
            children: [
              Task(
                  'Estudar hoje a noite no liberato aquela aula chata de gestão', 
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Academia','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Janta','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Ingles','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Consulta','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Arrumar roupas','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Remedio','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              //Todas essas Strings dentro dos paramentros
              //da task é aquela váriavel "nome" que eu criei na classe
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatefulWidget {
  final String nome; //criei essa váriavel
  final String foto;

  const Task(this.nome,this.foto ,{super.key});
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 190, 148, 179),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.foto,//OBJETO CRIADO
                        fit: BoxFit.cover,  
                        ),
                        
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 24, 
                                    overflow: TextOverflow.ellipsis),
                              )),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 15, color: Colors.blue,),
                                  Icon(Icons.star, size: 15, color: Colors.blue,),
                                  Icon(Icons.star, size: 15, color: Colors.blue,),
                                  Icon(Icons.star, size: 15, color: Colors.blue[100],),
                                  Icon(Icons.star, size: 15, color: Colors.blue[100],),
                                ],
                              ),
                        ],
                      ),
                      Container(
                        height: 72, width: 72,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                              Icon(Icons.arrow_drop_up),
                              Text('up', style: TextStyle(fontSize: 12),),
                            ],
                            )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.red,
                          value: nivel/10,
                        ),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'nivel: $nivel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
