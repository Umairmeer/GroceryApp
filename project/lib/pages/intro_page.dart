import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 160),
            child: Image.asset("lib/assets/images/avocado.png"),
          ),

          //we deliver groceries to your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )),
          ),

          SizedBox(
            height: 24,
          ),
          //fresh items everyday
          Text(
            "fresh items everyday",
            style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),
          //get started button

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
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