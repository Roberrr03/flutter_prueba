import'package:flutter/material.dart';

class  MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Padding
            Padding(padding: EdgeInsets.all(8)),
            //Container
            Container(
            color: Colors.blueAccent,
            margin: const EdgeInsets.only(left: 24.0),
            padding:  const EdgeInsets.all(8),
            child: const Text('Prueba Container'),
            ),
            //Card
            InkWell(
              onTap: () {},
              child:Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Prueba Card',
                  style: TextStyle(fontSize: 24),
                  ),
                  ),
            ),
          //SizeBox
            const SizedBox(

            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Prueba 1'),
                Icon(Icons.add_a_photo),
                Text('Prueba 1'),
              ],
            ),
            const Text(
            
              'You have pushed the button this many times:',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.blueAccent, fontSize:24.0),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

