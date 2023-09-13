import 'package:flutter/material.dart';

 class revisao extends StatelessWidget {
  const revisao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'revisão do que aprendi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 158, 102, 134)),
          useMaterial3: true,
      ),
      home: Scaffold(//estrutura do meu app 
        appBar: AppBar
        (title: Text('Testandp App'),
         ),
         body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
           children: [
             Container(
              color: Colors.black38,
              child: Container(
                color: Color.fromARGB(255, 134, 63, 156),
                height: 300,
                width: 500,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                     color: const Color.fromARGB(255, 198, 109, 139),
                     height: 200,width: 300,
                     
                     
                    
                    )
                    
                  ],
                ),
              ),
             ),
           ],
         ), 
      )
    );
  }
}

