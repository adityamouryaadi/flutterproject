import 'package:flutter/material.dart';

class BottomNavigationHomePage extends StatefulWidget {
  const BottomNavigationHomePage({super.key});

  @override
  State<BottomNavigationHomePage> createState() =>
      _BottomnavigationhomepageState();
}

class _BottomnavigationhomepageState extends State<BottomNavigationHomePage> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selected,
      onTap: (value) {
        setState(() {
          selected = value;
        });
      },
      selectedItemColor: Colors.red,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.inbox),
            label: 'Inbox'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Like'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
      ],
    );
  }
}
