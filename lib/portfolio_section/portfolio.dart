import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/core/const/lists.dart';
import 'package:web_project/core/const/widget.dart';
import 'package:web_project/widget/custom_button.dart';
import 'package:web_project/widget/custom_seperator.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Container(
      width: double.infinity,
      color: const Color(0xFF11071F),
      child: Column(
        children: [
          spaceForHeight,
          const CustomButtom(
            text: 'PORTFOLIO',
            color: Color.fromARGB(255, 99, 97, 97),
          ),
          spaceForHeight,
          Column(
            children: List.generate(
                4,
                (index) => Container(
                      height: 500,
                      width: 800,
                      child: Stack(
                        children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: const BoxDecoration(
                                    gradient: RadialGradient(
                                        radius: 0.5,
                                        colors: [
                                          Color.fromRGBO(117, 61, 171, 1.0),
                                          Color.fromRGBO(51, 15, 133, 0.0)
                                        ]),
                                    shape: BoxShape.circle),
                              )),
                          Align(
                            alignment: const Alignment(0, -0),
                            child: Container(
                              height: 350,
                              width: 190,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://i.ibb.co/VWjfs1j/Whats-App-Image-2023-07-18-at-18-41-25-2.jpg'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.9, -0.5),
                            child: Container(
                              height: 135,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    projectNames[index],
                                    style:const TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    height: 100,
                                    width: 400,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          39, 197, 194, 194),
                                    ),
                                    child:  Text(
                                      projectDescription[index],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 168, 206, 237)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        index<2?  Align(
                            alignment: const Alignment(0.9, 0.5),
                            child: Container(
                              padding:const EdgeInsets.fromLTRB(12, 8, 5, 8),
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(39, 197, 194, 194),
                              ),
                              child: Text(
                                projectTechnolagies[index],
                                  style:const TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 168, 206, 237))),
                            ),
                          ):const SizedBox(),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
