import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(
        fontFamily: GoogleFonts.rubik().fontFamily,
          useMaterial3: true,
        //  scaffoldBackgroundColor: Color.fromARGB(255, 24, 24, 24),
          brightness: Brightness.dark,
        ),
      home: const HomePage(),
    );
  }
}
