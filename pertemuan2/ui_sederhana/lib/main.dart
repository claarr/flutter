import 'package:flutter/cupertino.dart';
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 190, 32, 21)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    child: const Text('BERITA TERBARU'),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                      child: const Text('PERTANDINGAN HARI INI'),
                      onPressed: () {}),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.network(
                            'https://th.bing.com/th/id/OIP.cOAMPj0S9D_C-8NJArCmcQHaEK?w=284&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
                            width: 400,
                            height: 200,
                          ),
                          const Text(
                            'Costa Mendekat ke Palmeiras',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
// End Konten 1

//Konten 2
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.ligaolahraga.com/storage/images/news/2021/02/13/koeman-heran-pique-tuduh-wasit-telah-untungkan-madrid.jpeg',
                          width: MediaQuery.of(context).size.width / 2,
                          height: 130,
                        ),
                        Container(
                          padding: MediaQuery.of(context).padding,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Column(
                            children: [
                              Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text('Barcelona Feb 13, 2021',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
// End Konten 2

// Konten 3
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.ligaolahraga.com/storage/images/news/2021/02/13/koeman-heran-pique-tuduh-wasit-telah-untungkan-madrid.jpeg',
                          width: MediaQuery.of(context).size.width / 2,
                          height: 130,
                        ),
                        Container(
                          padding: MediaQuery.of(context).padding,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Column(
                            children: [
                              Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text('Barcelona Feb 13, 2021',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
// End Konten 3

// Konten 4
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.ligaolahraga.com/storage/images/news/2021/02/13/koeman-heran-pique-tuduh-wasit-telah-untungkan-madrid.jpeg',
                          width: MediaQuery.of(context).size.width / 2,
                          height: 130,
                        ),
                        Container(
                          padding: MediaQuery.of(context).padding,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Column(
                            children: [
                              Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text('Barcelona Feb 13, 2021',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
// End Konten 4

//Konten 5
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.ligaolahraga.com/storage/images/news/2021/02/13/koeman-heran-pique-tuduh-wasit-telah-untungkan-madrid.jpeg',
                          width: MediaQuery.of(context).size.width / 2,
                          height: 130,
                        ),
                        Container(
                          padding: MediaQuery.of(context).padding,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Column(
                            children: [
                              Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text('Barcelona Feb 13, 2021',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
// End Konten 5
            ],
          )
        ],
      ),
    );
  }
}
