import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewOfBooks extends StatelessWidget {
  CustomListViewOfBooks({super.key});

  List<Widget> images = [
    Image.asset(Assets.imagesBook1),
    Image.asset(Assets.imagesBook2),
    Image.asset(Assets.imagesBook1),
    Image.asset(Assets.imagesBook2),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .45,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 2);
        },
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            decoration: const BoxDecoration(),
            child: images[index],
          );
        },
      ),
    );
  }
}
