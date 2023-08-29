import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/home_page.dart';
import 'package:get/get.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(
        fontFamily: GoogleFonts.rubik().fontFamily,
          useMaterial3: true,
        //  scaffoldBackgroundColor: Color.fromARGB(255, 24, 24, 24),
          brightness: Brightness.dark,
        ),
      home:  HomePage(),
    );
  }
}
