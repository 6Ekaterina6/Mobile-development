import 'package:myapp/main.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  void _nullCounter() {
    setState(() {
      _counter = 0;
    });
  }


  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
        Container(
         margin: EdgeInsets.symmetric(vertical: 130.0, horizontal: 15.0),
       //   mainAxisAlignment: MainAxisAlignment.start,
          child: Column(
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
      )

        ),

      ),
   // This trailing comma makes auto-formatting nicer for build methods;

    floatingActionButton: Column (
         // crossAxisAlignment: CrossAxisAlignment.center,

       //   mainAxisAlignment: MainAxisAlignment.center,

          children: [

         Expanded(child:
              Container(

                margin: EdgeInsets.only(left: 30, top: 275),
                    child: Row(

          // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        RaisedButton(
                            child: Icon(
      Icons.add
      ),
      color: Colors.green,// padding: EdgeInsets.all(20.0),
      onPressed: () {
        _incrementCounter();
      },
    ),
        RaisedButton(

          child: Icon(
              Icons.remove
          ),
          color: Colors.red,
          onPressed: () {
            _decrementCounter();
          },
          //heroTag: null,
        )]))),

           Expanded(child: Container (
            margin: EdgeInsets.only( left: 40.0, bottom: 275.0), padding: EdgeInsets.only(bottom: 2.0, top: 2.0,right: 5.0),
          child:  TextButton(onPressed: _nullCounter, child: Text('Сбросить'),style: TextButton.styleFrom(
              primary: Colors.grey, textStyle: const TextStyle(fontSize: 20),
                )))),


      /* Expanded( child: Column(
    children:[TextButton(

    child:Text('Сбросить',
    //           textDirection: TextDirection.rtl,
    ),
    //style: TextButton.styleFrom(
    //  margin: const EdgeInsets.all(16.0),
    *//*padding: const EdgeInsets.all(16.0),
            primary: Colors.deepOrangeAccent,
            textStyle: const TextStyle(fontSize: 20),*//*

    style: TextButton.styleFrom(
    //     padding: const EdgeInsets.all(16.0),
    primary: Colors.grey,
    textStyle: const TextStyle(fontSize: 15),
    ),

    onPressed: () {
    _nullCounter();
    },), ]

    // const SizedBox(height: 30),)

*/
 //   ))],

    ]
    ));
  }


}
