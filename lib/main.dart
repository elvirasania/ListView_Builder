import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //data untuk nantinya dimunculkan dalam parameter
  final data = [
    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat 2',
    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat 3',
    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            //border
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //agar text rata tengah
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: const Text('BERITA TERKINI'),
                  ),
                ),
                Expanded(
                  child: Container(
                    //agar text rata tengah
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: const Text('PERTANDINGAN HARI INI'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset('images/sepakbola.jpg'),
                    ),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              //parameter dalam widget
              itemBuilder: (context, index) {
                return Card(
                    child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        child: Image.asset('images/sepakbola2.jpg'),
                      )),
                      Expanded(
                          child: Container(
                        child: Text(data[index]),
                      ))
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
