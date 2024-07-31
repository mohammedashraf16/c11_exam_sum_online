import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText(
      {super.key, required this.text});

  final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "See more",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xff4838D1),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}