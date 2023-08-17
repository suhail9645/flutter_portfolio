import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.10,
                      vertical: screenWidth * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('MSPK'),
                      const Spacer(),
                      Container(
                        // color: Colors.amber,
                        width: screenWidth * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Home'),
                            const Text('My works'),
                            const Text('About Me'),
                            OutlinedButton(
                                onPressed: () {},
                                child: const Text('Message Me')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Container(
                  height: 240,
                  width: double.infinity,
                  color: Colors.amber,
                  child: Column(children: [Text('MUHAMMED SUHAIL')],),
                )
              ],
            ),
          ),
        ));
  }
}
