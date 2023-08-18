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
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: screenHeight,
                    width: screenWidth / 2,
                    color: Colors.white,
                    child: Stack(children: [
                        CustomPaint(size: Size(screenWidth,screenHeight), painter: DrawTriangle()),
                    ],),
                  ),
                  Container(
                    height: screenHeight, width: screenWidth / 2,

                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 12, 12, 12),
                        image: DecorationImage(
                            image: AssetImage('assets/image.png'),
                            fit: BoxFit.cover)),
                    // width: screenWidth * 0.4,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Home'),
                                  const Text('My works'),
                                  const Text('About Me'),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: const Text('Message Me')),
                                ],
                              ),
                            ),
                            Expanded(flex: 1, child: SizedBox())
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              // Container(
              //   height: 240,
              //   width: double.infinity,
              //   color: Colors.amber,
              //   child: Column(children: [Text('MUHAMMED SUHAIL')],),
              // )
            ],
          ),
        ));
  }
}
class DrawTriangle extends CustomPainter {
  @
override

  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, Paint()..color = Colors.green);
  }
  @
override

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
