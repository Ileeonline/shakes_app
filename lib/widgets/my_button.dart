// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  final String btnName;
   MyButton({super.key,required this.btnName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 110,vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:const Color(0xffF4526A),
        ),
        child: Text(btnName,style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w900,color: Colors.white),),
      ),
    );
  }
}