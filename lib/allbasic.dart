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
        home: const MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "hello ",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        Image.asset(
          "assets/sunflower-8152089_1280.jpg",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        Container(
          child: Text(
            "hello",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          color: Colors.green,
          height: 100,
          width: 100,
        ),
        Container(
          child: Text(
            "hello",
            style: TextStyle(color: Colors.grey),
          ),
          color: Colors.yellow,
          height: 100,
          width: 100,
        ),
      ],
    );

    // return Scaffold(
    //     body: Container(
    //   color: Colors.green,
    //   child: Container(
    //     margin: EdgeInsets.all(20),
    //     alignment: Alignment.center,
    //     padding: EdgeInsets.all(10),
    //     height: 200,
    //     width: 200,
    //     color: Colors.red,
    //     child: Text(
    //       "hello ",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //   ),
    // ));
  }
}
