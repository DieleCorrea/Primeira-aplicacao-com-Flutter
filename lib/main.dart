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
        home: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    color: Colors.pink,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.pink,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.cyan,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.black,width: 60,height: 60,),
                  Container(color: Colors.red, width: 20, height: 25,),
                  Container(color: Colors.pinkAccent, width: 20,height: 25,),
                ],
              ),
              Container(
                color: Colors.amber,
                width: 300,
                height: 30,
                //Inserir trexto crio um filho widget chamado text
                child: Text(
                  'Diamante amarelo',
                  style: TextStyle(//estilo do texto 
                  color: Colors.black,//cor texto
                  fontSize: 28),//tamanho letra texto
                  textAlign: TextAlign.center,// para otexto ficar bem no centro 
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  /*Criei uma função anonima*/
                  print('Você apertou o Botão');
                }, 
                
                child: Text('Aperte o botão'),),
            ],
          ),
        ));
  }
}
