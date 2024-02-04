import 'package:flutter/material.dart';
import 'package:cupertino_container/cupertino_container.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Container Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Container', style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CupertinoContainer(
                decoration: const BoxDecoration(
                  color: Colors.black87,
                ),
                radius: BorderRadius.circular(30),/// BORDER RADIUS CUPERTINO
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                child: const Center(
                  child: Text(
                    '30 rounded', 
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ),
              ),

              CupertinoContainer(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.blue]
                  )
                ),
                radius: BorderRadius.circular(50),/// BORDER RADIUS CUPERTINO
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 250,
                child: const Center(
                  child: Text(
                    '50 rounded', 
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ),
              ),



              const CupertinoContainer(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                radius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),/// BORDER RADIUS CUPERTINO
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Only top', 
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ),
              ),
              const CupertinoContainer(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                radius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),/// BORDER RADIUS CUPERTINO
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.only(top: 14),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Only Bottom', 
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}