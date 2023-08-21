import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/widget/custom_button.dart';

import '../core/const/lists.dart';
import '../core/const/widget.dart';
import '../widget/custom_seperator.dart';

class AboutME extends StatelessWidget {
  const AboutME({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
  
    return Container(
      width: double.infinity,
      // height: screenHeight*1.20,
      color: Colors.white,
      child: Column(
       
        children: [
          spaceForHeight,
        const CustomButtom(text: 'About Me'),
        spaceForHeight,
          SizedBox(
            width: screenWidth * 0.60,
            child: Text(
              'Passionate Flutter developer with a strong background in creating mobile applications.I am genuinely enthusiastic about problem-solving, and I thrive in challenging situations where I can apply my analytical skills to develop efficient solutions. As a lifelong learner, I have a deep interest in expanding my knowledge and staying abreast of the latest trends and advancements in the world of mobile app development.',
              style: GoogleFonts.openSans(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
         spaceForHeight,
          const CustomUnderlying(),
           spaceForHeight,
          SizedBox(
            width: 800,
            
            child: GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 180,
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Stack(
                children: [
                  Image.asset(
                    assetImageList[index],
                    height: 30,
                    width: 50,
                  ),
                   Padding(
                    padding:const EdgeInsets.only(left: 24, top: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          skillHeaders[index],
                          style:const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 3,
                          ),
                        ),
                      const  SizedBox(
                          height: 13,
                        ),
                        Text(
                          skillDescriptions[index],style: GoogleFonts.openSans(color:Color.fromARGB(255, 57, 55, 55) ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
           const CustomUnderlying(),
        ],
      ),
    );
  }
}
