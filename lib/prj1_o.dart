// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/prj1_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const startingpage());
  }
}

class startingpage extends StatelessWidget {
  const startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Image.network(
            "https://th.bing.com/th/id/OIP.eIEz73xZoLmYwqTF92FciwHaEw?rs=1&pid=ImgDetMain",
            width: 400,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            // height: 150,
            width: 200,
            padding: EdgeInsets.all(10),
            child: Text(
              "Ready to make a new friend?",
              style: TextStyle(color: Colors.black, fontSize: 25),
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            // height: 100,
            width: 200,
            padding: EdgeInsets.all(10),
            child: Text(
              "We have the cutest pet available, all waiting to make you their new friend.",
              style: TextStyle(color: Colors.grey, fontSize: 15),
              maxLines: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,

                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black26,
                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 380,
            height: 70,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetHomePage()),
                );
              },
              child: Text(
                "Get started",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  backgroundColor: const Color.fromARGB(255, 247, 77, 65),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
