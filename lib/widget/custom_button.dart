import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                   ),
              ),
            ),
          );
  }
}