import 'package:flutter/material.dart';

class revisao extends StatelessWidget {
  const revisao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'revisão do que aprendi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 158, 102, 134)),
          useMaterial3: true,
        ),
        home: Scaffold(
          //estrutura do meu app
          appBar: AppBar(
            title: Text('Testandp App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Color.fromARGB(255, 134, 63, 156),
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
                      child: Text(
                        'augdiuagsduiad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('aperte'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class tarefa extends StatefulWidget {
  const tarefa({super.key});

  @override
  State<tarefa> createState() => _tarefaState();
}

class _tarefaState extends State<tarefa> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
