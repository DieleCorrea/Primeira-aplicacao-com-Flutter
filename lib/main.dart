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
          body: ListView(
            children: [
              Task('Estudar'),
              Task('Academia'),
              Task('Janta'),
              Task('Ingles'),
              Task('Consulta'),
              Task('Arrumar roupas'),
              Task('Remedio'),
              //Todas essas Strings dentro dos paramentros 
              //da task é aquela váriavel "nome" que eu criei na classe 
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatelessWidget {
  final String nome; //criei essa váriavel 
  const Task(this.nome,{super.key});//this.nome eu instancieie 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Container(color: Colors.black26, width: 72, height: 100,),
                          Text(nome), //Estou chamando a variavel que eu criei
                          ElevatedButton(
                            onPressed: (){}, 
                            child: Icon(Icons.arrow_drop_up)) 
                            //ao inves de colocar uma descrição no botão, eu adcionei um icone
                        ],
                      ),
          
                    )
                  ],
                ),
              ),
      ),
    );
  }
}