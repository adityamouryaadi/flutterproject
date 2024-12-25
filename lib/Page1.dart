import 'package:flutter/material.dart';
import 'package:flutter_application_1/pageview1.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
    required PageController pageViewController,
    required this.image1,
    required this.text1,
    required this.text2,
  }) : _pageViewController = pageViewController;

  final PageController _pageViewController;

  final String image1;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              image1,
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            //  Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 10,
            //       width: 17,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: const Color.fromARGB(255, 215, 145, 230),
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
            //   ],
            // ),
            threedot(
              currentpage: 0,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              text1,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 132),
              child: Text(
                text2,
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
                    onPressed: () {},
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
                      _pageViewController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                      backgroundColor: Colors.purple,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
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
