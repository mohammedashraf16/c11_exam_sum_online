import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBestSellerContainer extends StatelessWidget {
  CustomBestSellerContainer({super.key});

  List<Widget> items = [
    Image.asset(Assets.imagesLightMage),
    Image.asset(Assets.imagesBook1),
    Image.asset(Assets.imagesBook2),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        height: MediaQuery.of(context).size.height * .155,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 12);
          },
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF1F3FA),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  items[index],
                  Column(
                    children: [
                      const SizedBox(width: 12),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 15,right: 15),
                        child: Text(
                          "Light Mage",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Text(
                          "Laurie Forest",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}