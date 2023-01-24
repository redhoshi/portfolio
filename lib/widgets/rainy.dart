import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';

class RainyPage extends StatefulWidget {
  RainyPage({Key? key}) : super(key: key);

  @override
  _RainyPageState createState() => _RainyPageState();
}

class _RainyPageState extends State<RainyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            color: Colors.grey.shade300.withOpacity(0), //blueGrey.shade300,
            child: Row(
              children: [
                Container(
                  width: 1000,
                  height: 400,
                  child: ParallaxRain(
                    dropColors: [
                      //Colors.red,
                      //Colors.green,
                      //Colors.blue,
                      //Colors.yellow,
                      //Colors.brown,
                      Colors.blueGrey
                    ],
                    trail: true,
                    child: Text(
                      "Multicolor Trail",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
