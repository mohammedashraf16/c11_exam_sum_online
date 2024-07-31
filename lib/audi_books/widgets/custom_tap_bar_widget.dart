import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTapBarWidget extends StatefulWidget {
  const CustomTapBarWidget({super.key});

  @override
  State<CustomTapBarWidget> createState() => _CustomTapBarWidgetState();
}

class _CustomTapBarWidgetState extends State<CustomTapBarWidget> {
  List<String> items = [
    "Art",
    "Business",
    "Comedy",
    "Drama",
    "imagination",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.1,
        child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? const Color(0xff2E2E5D)
                          : const Color(0xffF1F3FA),
                      borderRadius: currentIndex == index
                          ? BorderRadius.circular(15)
                          : BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: currentIndex == index
                              ? Colors.white
                              : const Color(0xff2E2E5D),
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                    visible: currentIndex==index,
                    child: Container(width: 5,height: 5,decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2E2E5D),
                    ),))
              ],
            );
          },
        ),
      ),
    );
  }
}