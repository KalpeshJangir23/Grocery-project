import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Screens/homepage.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 60.0, right: 60, top: 120, bottom: 60),
            child: Image.asset('assets/avocado.png'),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "We deliver grocery to your doorsteps",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "Fresh items EveryDay",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.notoSerif(fontSize: 15, color: Colors.blueGrey),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.notoSerif(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
