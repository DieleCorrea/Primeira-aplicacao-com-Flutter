import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: const Color.fromARGB(255, 91, 151, 199),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    color: Colors.pink,
                    width: 500,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                width: 500,
                height: 100,
                child: const Text(
                    'aaaaaaa',
                   
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    color: Colors.pink,
                    width: 500,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
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
                    color: Colors.black,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.pink,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.black,
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
                  Container(color: Colors.pink, width: 200, height: 60,),
                  Container(color: Colors.black, width: 60,height: 60,),
                ],
              ),
              Container(//texto
                color: const Color.fromARGB(255, 219, 150, 174),
                width: 300,
                height: 30,
                //Inserir texto crio um filho widget chamado text
                child: const Text(
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
                
                child: const Text('Aperte o botão'),),

            ],
          ),
        );
        
  }
}