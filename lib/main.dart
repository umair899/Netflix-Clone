import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/screens/Home_screen.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      
      theme: ThemeData(
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color:Colors.white, fontSize: 24.0),
        //   bodySmall: TextStyle(color:Colors.white, fontSize: 24.0),
        // ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, background: Colors.black),
        useMaterial3: true,
        fontFamily: GoogleFonts.ptSans().fontFamily,
      ),
      home: HomeScreen(),
    );
  }
}
