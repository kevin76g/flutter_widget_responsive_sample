import 'package:flutter/material.dart';
import 'package:flutter_widget_responsive_sample/responsive_screen.dart';

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
        primarySwatch: Colors.blue,
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

const fixedWidth = 350.0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.outbound),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResponsiveScreen()),
            );
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              const Text('Fixed Width $fixedWidth',
                  style: TextStyle(fontSize: 25.0)),
              const SizedBox(
                height: 30.0,
              ),
              Image.asset(
                'assets/images/avocado.jpg',
                width: fixedWidth,
              ),
            ],
          ),
        ),
      ), //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
