import 'package:c11_exam_sun_online/audi_books/widgets/custom_row_text.dart';
import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:c11_exam_sun_online/mental_health/widgets/custom_container_for_exercises.dart';
import 'package:c11_exam_sun_online/mental_health/widgets/custom_page_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_status_list_view.dart';

class MentalHeathTap extends StatelessWidget {
  const MentalHeathTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Image.asset(Assets.imagesMentalLogo),
                  const SizedBox(width: 10),
                  Text(
                    "Moody",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Badge(
                      child: Icon(Icons.notifications_none_sharp, size: 30)),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'Hello,',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sara Rose',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color(0xff371B34)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("How are you feeling today ?",
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.black))
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CustomStatusListView(),
            ),
            const SliverToBoxAdapter(
                child: CustomRowText(
                    text: "Feature", color: Color(0xff027A48))),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(child: CustomPageViewWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
                child: CustomRowText(
                    text: "Exercise", color: Color(0xff027A48))),
            const SliverToBoxAdapter(
                child: Row(
              children: [
                Expanded(
                  child: CustomContainerForExercises(
                    text: "Relaxation",
                    image: Assets.imagesRelax,
                    color: Color(0xffF9F5FF),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomContainerForExercises(
                    text: "Relaxation",
                    image: Assets.imagesMeditation,
                    color: Color(0xffFDF2FA),
                  ),
                ),
              ],
            )),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
                child: Row(
              children: [
                Expanded(
                  child: CustomContainerForExercises(
                    text: "Beathing",
                    image: Assets.imagesBeathing,
                    color: Color(0xffFFFAF5),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomContainerForExercises(
                    text: "Yoga",
                    image: Assets.imagesYoga,
                    color: Color(0xffF0F9FF),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

