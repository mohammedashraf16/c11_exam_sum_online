import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageViewWidget extends StatefulWidget {
  const CustomPageViewWidget({super.key});

  @override
  State<CustomPageViewWidget> createState() => _CustomPageViewWidgetState();
}

class _CustomPageViewWidgetState extends State<CustomPageViewWidget> {
  List<Widget> images = [
    Image.asset(Assets.imagesWalkingtheDog),
    Image.asset(Assets.imagesWalkingtheDog),
    Image.asset(Assets.imagesWalkingtheDog),
  ];

  List<String> title = [
    "Positive vibes",
    "Enjoy",
    "Be Calm",
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .22,
          child: PageView.builder(
            itemCount: images.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * .22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffECFDF3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        title[index],
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff344054),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Boost your mood with\npositive vibes",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.black),
                          ),
                          images[index]
                        ],
                      ),
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(Assets.imagesPlaybutton),
                            color: Color(0xff32D583),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "10 mins",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
          child: SmoothPageIndicator(
            controller: pageController,
            count: images.length,
            effect: const JumpingDotEffect(
              radius: 10,
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Colors.grey,
              activeDotColor: Color(0xff98A2B3),
            ),
          ),
        )
      ],
    );
  }
}
