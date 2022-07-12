import 'package:flutter/material.dart';

const widthRatio = 0.85;

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final imageWidth = mediaQueryData.size.width * widthRatio;
    final fontSize = mediaQueryData.size.width * widthRatio / 100 * 8;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Text('Responsive Width $imageWidth',
                  style: TextStyle(fontSize: fontSize, color: Colors.blue)),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                width: imageWidth,
                child: Image.asset(
                  'assets/images/avocado.jpg',
                ),
              ),
            ],
          ),
        ),
      ), //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
