// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_import, unused_import
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shakes_here/widgets/my_button.dart';
import 'my_navigation_page.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Milkshake 1.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY:
                    4), // Adjust the sigmaX and sigmaY for different blur intensities
            child: Container(
              color: Colors.black.withOpacity(0), // Transparent color
            ),
          ),
           Positioned(
              top: 600,
              left: 25,
              child: Text(
                textAlign: TextAlign.center,
                'What do you want\nto eat today?',
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 1.2),
              )),
          Positioned(
            top: 710,
            left: 80,
            child: Text(
              textAlign: TextAlign.center,
              "Lets make a delicious dish with\nthe best recipe fot the family",
              style: GoogleFonts.bebasNeue(
                  fontSize: 26,
                  color: Colors.grey[200],
                  fontWeight: FontWeight.normal,
                  height: 1.4,
                  ),
            ),
          ),
          Positioned(
              top: 820,
              left: 80,
              child: MyButton(
                btnName: 'Start',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const MyNavigationPage(),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
