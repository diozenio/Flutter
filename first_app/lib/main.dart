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
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _handleLight = true;
  Color titleColor = Color(0xFF333333);
  Color handleColor = Color.fromARGB(255, 153, 248, 0);
  Color backgroundColor = Color(0xFFFFFFFF);

  void _incrementCounter() {
    setState(() {
      _handleLight = !_handleLight;
      if(_handleLight) {
      titleColor = Color(0xFF333333);
      backgroundColor = Color(0xFFFFFFFF);
      handleColor = Color.fromARGB(255, 153, 248, 0);
      } 
      else {
        titleColor = Color(0xFFFFFFFF);
        backgroundColor = Color(0xFF333333);
        handleColor = Color.fromARGB(255, 248, 0, 0);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ligar / Desligar',
              style: TextStyle(
                  color: titleColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$_handleLight',
              style: TextStyle(
                  color: handleColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.light_mode),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
