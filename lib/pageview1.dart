// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page1.dart';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter_application_1/Page3.dart';

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
        home: OnBoarding1());
  }
}

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final PageController _pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(bottom: 100),
        child: PageView(
          controller: _pageViewController,
          scrollDirection: Axis.vertical,
          children: [
            Page1(
              pageViewController: _pageViewController,
              image1: 'assets/OIP.jpg',
              text1: 'Find Your Destination',
              text2:
                  'All tourist destinations are in youn hands just click and find the conveince now in phone',
            ),
            Page2(
              pageViewController: _pageViewController,
              image2: 'assets/journey3.jpg',
              text11: 'Start Your Journey',
              text22:
                  'from this second you will find an amazing and diverse journey through the grip and click',
            ),
            Page3(
              pageViewController: _pageViewController,
              image3: 'assets/travel.jpg',
              text111: 'Travel the world',
              text222:
                  'Explore different places in different countries and find many surprises by your side',
            ),
          ],
          physics: BouncingScrollPhysics(),
          pageSnapping: true,
          onPageChanged: (index) {
            setState(() {
              currentpage = index;
            });
          },
        ),
      ),
    );
  }
}

class threedot extends StatelessWidget {
  const threedot({super.key, required this.currentpage});

  final int currentpage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentpage == 0
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(Icons.circle_outlined, color: Colors.deepPurple, size: 10),
        currentpage == 1
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(Icons.circle_outlined, color: Colors.deepPurple, size: 10),
        currentpage == 2
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(
                Icons.circle_outlined,
                color: Colors.deepPurple,
                size: 10,
              ),
      ],
    );
  }
}
