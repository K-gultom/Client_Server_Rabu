import 'package:flutter/material.dart';
import 'package:navigasi_named_routing/FirstScreen.dart';
import 'package:navigasi_named_routing/FirstScreen.dart';
import 'package:navigasi_named_routing/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //initialRoute akan berfungsi sebagai Inisialisasi screen yang pertama kali dibuka
      initialRoute: '/',  

      //routes ini menampung route-route yang akan digunakan sebagai inisialisai routing
      routes: {
        '/' :(context) => FirstScreen(),
        '/second':(context) => SecondScreen(),
      },
    );
  }
}