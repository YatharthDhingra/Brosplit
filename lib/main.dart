/*Stateful:
Constructor-> createState() -> initState(){initialisation} -> build(){render it on the screen} --(if we want to update the state)--> setState() -> build() {re-render it on the screen}

Stateless : 
Constructor -> build() {render it on the screen}
*/

import 'package:brosplit/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor, key will be null until provided
  //keys are identifiers to widgets

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //root widget, encapsulates whole application
    return MaterialApp(
      title: 'Brosplit',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 38, 121, 189)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //this is like a page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brosplit'),
        backgroundColor: Colors.green,
      ),
      body: const Column(children: [
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 24.0, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress, //the type of keyboard to enter the text
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  )
                ],
              ),
            ])),
            Padding(padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Username/Email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                    )
                  ],
                )
            ]),
            )
      ],   
      ),
    );
  }
}
