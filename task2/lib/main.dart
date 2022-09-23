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
        fontFamily: 'Poppins',
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
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20)),
              color: const Color(0xff00539f),
              child: 
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 30),
                child: 
                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Image.asset("images/logo.png")
                    ),

                    const Text("Clubcard",
                    style: TextStyle(
                      height: 1.2,
                      letterSpacing: -2,
                      fontWeight: FontWeight.w600,
                      fontSize: 48,
                      color: Colors.white),
                    ),
                 Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: 
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    textColor: Colors.white,
                    title: const Text("Tap to scan",
                      style: TextStyle(fontWeight: FontWeight.w600,
                      fontSize: 24)
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text("Collect Clubcard points"),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder()),
                        padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Color.fromARGB(255, 18, 109, 194),
                      ),
                    ),
                    )
                    ),
                  ),
                ],
                )
              ),
            )
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Card(
//               shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20)),
//               color: const Color(0xff00539f),
//               child: 
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 child: 
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     SizedBox(
//                       width: 100,
//                       child: Image.asset("images/logo.png")
//                     ),
//                     const Text("Clubcard",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 64,
//                       color: Colors.white),
//                     ),
//                 ListTile(
//                   textColor: Colors.white,
//                   title: const Text("Tap to scan",
//                     style: TextStyle(fontWeight: FontWeight.bold,
//                     fontSize: 24)
//                   ),
//                   subtitle: const Text("Collect Clubcard points"),
//                   trailing: IconButton(onPressed: () {}, 
//                   icon: Ink(
//                     decoration: const ShapeDecoration(
//                       color: Colors.white,
//                       shape: CircleBorder()),
//                       padding: const EdgeInsets.all(8),
//                     child: const Icon(Icons.arrow_forward_ios_rounded,
//                     size: 16,
//                     color: Color(0xff00539f),
//                   ),
//                   )
//                   ),
//                 )
//                 ],
//                 )
//               ),
//             )
//           ],
//         ),
//       ),
//        // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

