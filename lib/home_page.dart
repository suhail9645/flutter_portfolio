import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/about_me_section/about_me.dart';
import 'package:web_project/contact_section/contact_section.dart';
import 'package:web_project/core/const/lists.dart';
import 'package:web_project/core/const/widget.dart';
import 'package:web_project/description_section/description.dart';
import 'package:web_project/portfolio_section/portfolio.dart';
import 'package:web_project/skill_section/skill.dart';
import 'package:get/get.dart';
import 'package:web_project/widget/home_page_side_container.dart';

import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    List<String> linkImageList = [
      'assets/linkedin.png',
      'assets/git.png',
      'assets/leetcode.png',
      'assets/instgram.png'
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: screenHeight,
                        width: screenWidth / 2,
                        color: Colors.white,
                        child: Row(
                          children: [
                            HomePageSideContainer(linkImageList: linkImageList),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'MSPK',
                                      style: GoogleFonts.josefinSans(
                                          fontSize: 45,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Hi, I am ',
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: screenHeight * 0.03,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.35,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(
                                                  'MUHAMMED SUHAIL',
                                                  textStyle:
                                                      GoogleFonts.raleway(
                                                          fontSize: 37,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                  cursor: '|',
                                                  speed: const Duration(
                                                      milliseconds: 200),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AnimatedTextKit(
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Flutter Developer',
                                          textStyle: GoogleFonts.raleway(
                                              letterSpacing: 2,
                                              fontSize: 25,
                                              color: const Color.fromARGB(
                                                  255, 117, 115, 115),
                                              fontWeight: FontWeight.bold),
                                          cursor: '|',
                                          speed:
                                              const Duration(milliseconds: 100),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: screenWidth * 0.30,
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'I am Capable for creating excelent mobile and web application,I can handle every step from concept to deployment',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 28, 3, 89),
                                          Color.fromARGB(207, 0, 0, 0),
                                          Color.fromARGB(255, 20, 2, 67)
                                        ]),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        'Download CV',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.10,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight,
                        width: screenWidth / 2,
                        decoration: const BoxDecoration(
                           color:  Color(0xFF11071F),
                            image: DecorationImage(
                                image: AssetImage('assets/image.png'),
                                fit: BoxFit.cover)),
                        child: Column(
                          children: [
                            const SizedBox(
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
                                      ...List.generate(
                                        3,
                                        (index) => Obx(
                                          () => InkWell(
                                            onHover: (value) {
                                              controller.onTextHover(index);
                                            },
                                            onTap: () {},
                                            child: AnimatedDefaultTextStyle(
                                              duration: const Duration(
                                                  milliseconds: 100),
                                              style: TextStyle(
                                                  fontSize: controller
                                                              .navbarTextsValue[
                                                          index]
                                                      ? 19
                                                      : 14,
                                                  color: controller
                                                              .navbarTextsValue[
                                                          index]
                                                      ? Colors.amber
                                                      : Colors.white),
                                              child: Text(navbarTexts[index]),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient:
                                                const LinearGradient(colors: [
                                              Color.fromARGB(255, 28, 3, 89),
                                              Colors.black,
                                              Color.fromARGB(255, 20, 2, 67)
                                            ])),
                                        child: ElevatedButton(
                                            style: const ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.transparent)),
                                            onPressed: () {},
                                            child: const Text(
                                              'Contact Me',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(flex: 1, child: SizedBox())
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: screenWidth / 2,
                    child: CustomPaint(
                        size: Size(screenWidth, screenHeight),
                        painter: DrawTriangle()),
                  ),
                ],
              ),
              // const Description(),
              const AboutME(),
              const SkillSection(),
              const Portfolio(),
             
            ],
          ),
        ));
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.93, size.height);
    path.close();
    canvas.drawPath(
        path, Paint()..color = const Color.fromARGB(255, 12, 12, 12));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
