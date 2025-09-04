import 'package:flutter/material.dart';

/* imports Flutter Material Design Library widgets. tools for building the material design UI (google design system)


import - dart keyword to include external libraries

package:flutter - refers to the material package that comes with flutter

This is Essential for building flutter apps w/a standard UI.
**/

void main() {// entry point of a flutter app// //
  runApp(const MyApp()); // runApp that initialize the app and attached the root widget (myApp) to the screen,
//create an instances of the MyApp widget, that marked ont foe compile-time (immutable)
}

class MyApp extends StatelessWidget {
  //MyApp is a custom that extends Stateless widget
  // stateless widget - base class for widget that do not hold mutBLE STATE
  const MyApp({super.key}); // constructor// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData( // primary color palette
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/jjk.jpg',
                width: 500,
                height:500,),
              const SizedBox(height: 20),
              const Text(
                  'Jujutsu Kaisen: Hidden Inventory/Premature Death',
                  style: TextStyle(fontSize: 50, color: Colors.white, height: 1.5)
              ),
              const Text(
                'The "Hidden Inventory  Premature Death" movie is a theatrical compilation of the events from the Hidden Inventory / Premature Death Arc from the first five episodes of Season 2 of Jujutsu Kaisen. It delves into the friendship, morals, and beliefs of Satoru Gojo and Suguru Geto, exploring how the challenges in the jujutsu society lead them to follow separate paths. The movie features newly remastered sound and original content, providing a unique experience for fans and newcomers alike. It is set to adapt one of the best arcs in recent shonen anime history, with a focus on the emotional and moral complexities of the characters journey.',
                  style: TextStyle(fontSize: 20,color: Colors.white,height: 1.5),
                  textAlign: TextAlign.center,
               )
            ],
          )
      ),
    );

  }
}