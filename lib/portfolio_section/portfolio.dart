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
                color: Colors.amber,
              )
            ),
          )
        ],
      ),
    );
  }
}
