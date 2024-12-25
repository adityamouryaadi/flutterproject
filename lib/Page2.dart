import 'package:flutter/material.dart';
import 'package:flutter_application_1/pageview1.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
    required PageController pageViewController,
    required this.image2,
    required this.text11,
    required this.text22,
  }) : _pageViewController = pageViewController;

  final PageController _pageViewController;

  final String image2;
  final String text11;
  final String text22;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Column(children: [
                Image.asset(
                  image2,
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
                //   ],
                // ),
                threedot(
                  currentpage: 1,
                ),

                SizedBox(
                  height: 30,
                ),
                Text(
                  text11,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 132),
                  child: Text(
                    text22,
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
                          "Back",
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
