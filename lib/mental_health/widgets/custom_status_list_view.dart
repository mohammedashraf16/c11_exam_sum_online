import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStatusListView extends StatelessWidget {
  CustomStatusListView({super.key});

  List<Widget> images = [
    Image.asset(Assets.imagesLove),
    Image.asset(Assets.imagesCool),
    Image.asset(Assets.imagesHappy),
    Image.asset(Assets.imagesSad),
  ];
  List<String> status =[
    "Love",
    "Cool",
    "Happy",
    "Sad",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 35);
        },
        itemCount: status.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              images[index],
              Text(status[index],style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black
              ),)
            ],
          );
        },
      ),
    );
  }
}