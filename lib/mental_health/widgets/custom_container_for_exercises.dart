import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainerForExercises extends StatelessWidget {
  const CustomContainerForExercises(
      {super.key,
        required this.text,
        required this.image,
        required this.color});

  final String text;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
