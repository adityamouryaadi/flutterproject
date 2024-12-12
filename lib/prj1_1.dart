// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomnavigationbar.dart';
import 'package:flutter_application_1/drawer1.dart';

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
        home: const PetHomePage());
  }
}

class PetHomePage extends StatelessWidget {
  const PetHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationHomePage(),
      appBar: AppBar(
        leadingWidth: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Drawer1()),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text("Lagos, Nigirea")
              ],
            ),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.red,
              child: ClipOval(
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.1ZVCLZGYDMa6fpaWgq-eogHaEK?rs=1&pid=ImgDetMain',
                  fit: BoxFit.cover,
                  width: 36,
                  height: 36,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find a new friend',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 8),
                  ),
                  hintText: "Search for a pets",
                  suffixIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green),
                    child: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Pet categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 38,
                      width: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  foregroundImage: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.1Tx4X09-Q9zmZ6cYCt6pSgHaE5?w=278&h=184&c=7&r=0&o=5&pid=1.7"),
                                ),
                                Text(
                                  "Dogs",
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 38,
                      width: 117,
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  foregroundImage: NetworkImage(
                                      "https://th.bing.com/th/id/R.1a1f10b6714487c2ce8f56baf90f3c15?rik=YaLjGFUF5m5ZcQ&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f9%2f9b%2fPhoto_of_a_kitten.jpg&ehk=D%2bCxp6dPLSkHfYa8JvraOQ0MScRDCwP95fuL7yMpZ7E%3d&risl=&pid=ImgRaw&r=0"),
                                ),
                                Text(
                                  "Cats",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 38,
                      width: 117,
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  foregroundImage: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.fhsjY05gjAISin8JSqqPUwHaF7?w=2000&h=1600&rs=1&pid=ImgDetMain"),
                                ),
                                Text(
                                  "Rabbits",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SectionCard(
                    imagecard:
                        'https://images.pexels.com/photos/46505/swiss-shepherd-dog-dog-pet-portrait-46505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    text1: 'George',
                    text2: 'Cavalier king',
                    text3: '2yrs',
                  ),
                  SectionCard(
                    imagecard:
                        'https://th.bing.com/th/id/R.cae62da3d838d410e722df8bc0ae4dea?rik=8C5yqjx8wmwzKA&riu=http%3a%2f%2fwww.reportingday.com%2fwp-content%2fuploads%2f2018%2f07%2fLabrador-Retriever-Dog-HD-Wallpapers.jpg&ehk=ERW%2fI8QUNzJVUKJnznp2hyEzkw6PozCYJGPsy1IiNZM%3d&risl=&pid=ImgRaw&r=0',
                    text1: 'Franklin',
                    text2: 'Dutch Pug',
                    text3: '2yrs',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    'Newest Pets',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SectionCard2(
                    imageCard:
                        'https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg?cs=srgb&dl=pexels-pixabay-257540.jpg&fm=jpg',
                    text1: 'Beethoven',
                    text2: 'Nova Scotia Duck Toll....',
                    text3: '2yrs',
                  ),
                  SectionCard2(
                    imageCard:
                        'https://th.bing.com/th/id/OIP.hp-Tsbnv6yy2RrcWRo9mVgHaE8?rs=1&pid=ImgDetMain',
                    text1: 'Hurriciane',
                    text2: 'Leo Jax Oliver',
                    text3: '2yrs',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionCard2 extends StatelessWidget {
  const SectionCard2({
    super.key,
    required this.imageCard,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  final String imageCard;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 370,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageCard,
                height: 90,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 140),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.favorite,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      text3,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.imagecard,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final String imagecard;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 180,
        height: 220,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imagecard,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              text1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text2,
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Text(
                          text3,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
