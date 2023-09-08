import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text, this.color});
final String text;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color:color?? const Color.fromARGB(255, 252, 251, 251), width: 4),
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                    color:color?? const Color.fromARGB(255, 243, 241, 241),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                   ),
              ),
            ),
          );
  }
}