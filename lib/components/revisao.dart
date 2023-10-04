import 'package:flutter/material.dart';

class Revisao extends StatelessWidget {
  const Revisao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'revisão do que aprendi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 158, 102, 134)),
          useMaterial3: true,
        ),
        home: Scaffold(
          //estrutura do meu app
          appBar: AppBar(
            title: const Text('Testandp App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 134, 63, 156),
                height: 600,
                width: 500,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 198, 109, 139),
                      ),
                      height: 200,
                      width: 300,
                      child: const Text(
                        'augdiuagsduiad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('aperte'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Tarefa extends StatefulWidget {
  const Tarefa({super.key});

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
