import 'package:flutter/material.dart';
import 'package:navigator_route_generator/secondscreen.dart';



class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Layar Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second', arguments: 'Text dari First Screen');
          },
          child: Text("Menuju Layar kedua"),
        ),
      ),
    );
  }
}
