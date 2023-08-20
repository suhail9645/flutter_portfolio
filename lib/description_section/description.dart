import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KEEP IN MIND',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Nothing in life is constant. No ambition results in mere stability. Ornament yourself with wisdom rather than possessions. Within oneself, find freedom. Every action, each thought, carves your path. Even in the darkest of times, the smallest light shines. Embrace life's challenges, for they define you. Trust in the journey, not the destination.")
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/dash.jpg'))),
              ))
        ],
      ),
    );
  }
}
