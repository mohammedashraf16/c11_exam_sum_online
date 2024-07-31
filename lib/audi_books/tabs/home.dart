import 'package:c11_exam_sun_online/audi_books/widgets/custom_best_seller_container.dart';
import 'package:c11_exam_sun_online/audi_books/widgets/custom_list_view_of_books.dart';
import 'package:c11_exam_sun_online/audi_books/widgets/custom_row_text.dart';
import 'package:c11_exam_sun_online/audi_books/widgets/custom_tap_bar_widget.dart';
import 'package:c11_exam_sun_online/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              // margin: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * .12,
              child: Row(
                children: [
                  Image.asset(Assets.imagesLogoSmall),
                  const SizedBox(width: 10),
                  Image.asset(Assets.imagesAudiBooks),
                  const Spacer(),
                  const Icon(
                    Icons.settings_outlined,
                    color: Color(0xff4838D1),
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: CustomRowText(text: "Categories")),
          const SliverToBoxAdapter(child: CustomTapBarWidget()),
          const SliverToBoxAdapter(
            child: CustomRowText(text: "Recommended For You"),
          ),
          SliverToBoxAdapter(child: CustomListViewOfBooks()),
          const SliverToBoxAdapter(child: CustomRowText(text: "Best Seller")),
          const SliverToBoxAdapter(child: SizedBox(width: 10)),
          SliverToBoxAdapter(child: CustomBestSellerContainer()),
        ],
      ),
    );
  }
}


