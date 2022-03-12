import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
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


 /* void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Row(
            children: [ Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [Image(image: AssetImage('assets/obch.jpg'),height: MediaQuery.of(context).size.height*0.33,width: MediaQuery.of(context).size.width/*,alignment: Alignment.topCenter*/),
                SizedBox(height: 20),
                Row (
                  children :[
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Общежитие №20', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),
                      SizedBox(height: 5.0,),
                      Container(
                      //  margin: EdgeInsets.only(right: 90.0),
                      //  padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text('Краснодар ул.Калинина 13', style: TextStyle(color: Colors.grey, fontSize: 16.0), textDirection: TextDirection.ltr)),
                    ],//mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                    [ Padding(padding: EdgeInsets.all(5)),
                      Padding(padding: EdgeInsets.only(right: 70, left: 90),),
                      //Text('    '),

                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(CupertinoIcons.heart_solid,
                        color: Colors.redAccent,
                      ), Text('29')])],
                    ),
                  ]),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  /*  Padding(padding: EdgeInsets.only(left: 0, right: 16)*//*),*/
                  Column(children: [
                    Column(children: [Icon(Icons.call,
                    color: Colors.green,
                  )],),
                    SizedBox(height: 15,),
                    Column(children: [Text('ПОЗВОНИТЬ', style: TextStyle(color: Colors.green))],)//style: TextStyle(color: Colors.grey
                  ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.09),
                    Column(children: [
                      Column(children: [Icon(Icons.near_me_sharp,
                        color: Colors.green,
                      )],),
                      SizedBox(height: 10,),
                      Column(children: [Text('МАРШРУТ',style: TextStyle(color: Colors.green))],)
                    ],
                    ),

                    SizedBox(width: MediaQuery.of(context).size.width*0.09),

                    Column(children: [
                      Column(children: [Icon(Icons.share,
                        color: Colors.green,
                      )],),
                      SizedBox(height: 10),
                      Column(children: [Text('ПОДЕЛИТЬСЯ', style: TextStyle(color: Colors.green))],)
                    ],
                    ),
                  ],
                ),
                Row(
                  children: [ Column(
                    children: [
                      SizedBox(height: 17),
                      Container(

                        width: MediaQuery.of(context).size.width*0.98,
                        height: 400,
                        child:const Text(
                          'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
                          'советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ),
                      ],
                )
                      ],
                ),
              ],
            ),
    ])),
      ));
  }
}
