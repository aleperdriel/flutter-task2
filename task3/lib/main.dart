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
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50), 
        child:
        SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                return SizedBox( 
                  height: 400, 
                  width: 200,
                  child: ListTile(
                    title: Text("Recipe $index",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                    subtitle: Text("Let's see how to make the scrumptious recipe #$index!"),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 700,
              width: 300,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Contact #$index"),
                      subtitle: Text("Get in touch now !"),
                      tileColor: Colors.blueGrey,
                    );
                }),
              ),
          ],
          ),
          
        ),
        ),
      );
  }
}