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
        home: const LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/011/432/528/small/enter-login-and-password-registration-page-on-screen-sign-in-to-your-account-creative-metaphor-login-page-mobile-app-with-user-page-flat-illustration-vector.jpg',
                height: 200,
                width: 200,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.blue),
                  // ),
                  labelText: "Username",
                  hintText: "virat",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.blue),
                  // ),
                  labelText: "Password",
                  hintText: "******",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text("Forgot Password?"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 12),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "SignUP",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Or"),
                ],
              ),
              Container(
                width: 500,
                child: Row(
                  children: [],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      label: Image.asset(
                        "assets/fb.png",
                        scale: 80,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              )
            ])));
  }
}
