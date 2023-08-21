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
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 28, 3, 89),
        Colors.black,
        Color.fromARGB(255, 20, 2, 67)
      ])),
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
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 2)),
                width: 800,
                height: 300,
                child: Column(
                  children: [
                    Text(
                     projectNames[index],
                      style: GoogleFonts.montserrat(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const CustomUnderlying(
                      color: Color.fromARGB(255, 113, 112, 112),
                    ),
                     Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(projectDescription[index],
                        style:const TextStyle(fontSize: 17),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/play.png',
                          height: 35,
                          width: 35,
                        ),
                         Text(
                          projectPlayStorelinks[index]==''?'NOT UPLOADED IN PLAY STORE':projectPlayStorelinks[index],
                          style:const TextStyle(
                              fontSize: 21,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/git.png',
                          height: 35,
                          width: 35,
                        ),
                      Text(
                          projectGitlinks[index],
                          style:   const TextStyle(
                              fontSize: 21,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
