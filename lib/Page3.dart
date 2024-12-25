import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pageview1.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
    required PageController pageViewController,
    required this.image3,
    required this.text111,
    required this.text222,
  }) : _pageViewController = pageViewController;

  final PageController _pageViewController;

  final String image3;
  final String text111;
  final String text222;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              image3,
              fit: BoxFit.contain,
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 10,
            //       width: 10,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.black26,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Container(
            //       height: 10,
            //       width: 10,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.black38,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Container(
            //       height: 10,
            //       width: 17,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: const Color.fromARGB(255, 215, 145, 230),
            //       ),
            //     ),
            //   ],
            // ),
            threedot(
              currentpage: 2,
            ),

            SizedBox(
              height: 30,
            ),
            Text(
              text111,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 132),
              child: Text(
                text222,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _pageViewController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 28, color: Colors.white),
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
