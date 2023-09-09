import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/core/const/lists.dart';
import 'package:web_project/core/const/widget.dart';
import 'package:web_project/widget/custom_button.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF11071F),
      child: Column(
        children: [
          spaceForHeight,
          const CustomButtom(text: 'Skills'),
          spaceForHeight,
          SizedBox(
            width: 750,
            child: Text(
              'USING NOW :',
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Color.fromARGB(255, 158, 155, 155),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 750,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(
                  8,
                  (index) => Container(
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              skillusing[index],
                              height: 99,
                              width: 99,
                            ),
                            Text(
                              skillusingNames[index],
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 241, 239, 239)),
                            )
                          ],
                        ),
                      )),
            ),
          ),
          spaceForHeight,
          SizedBox(
            width: 750,
            child: Text(
              'LEARNING :',
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color:Color.fromARGB(255, 158, 155, 155),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 750,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(
                  4,
                  (index) => SizedBox(
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              skillLearning[index],
                              height: 99,
                              width: 99,
                            ),
                            Text(
                              skillLearningNames[index],
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 242, 240, 240)),
                            )
                          ],
                        ),
                      )),
            ),
          ),
          spaceForHeight,
        ],
      ),
    );
  }
}
