
import 'package:c11_exam_sun_online/mental_health/tabs/category.dart';
import 'package:c11_exam_sun_online/mental_health/tabs/home.dart';
import 'package:c11_exam_sun_online/mental_health/tabs/profile.dart';
import 'package:c11_exam_sun_online/mental_health/tabs/shop.dart';
import 'package:flutter/material.dart';

class MentalHomeScreen extends StatefulWidget {
  const MentalHomeScreen({super.key});

  static const String routeName = "home";

  @override
  State<MentalHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MentalHomeScreen> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontSize: 18
          ),
          selectedItemColor: const Color(0xff027A48),
          onTap: (value) {
            setState(() {
              currentIndex=value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view,),label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.shop_sharp,),label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded,),label: "Profile"),
          ]),
      body: tabs[currentIndex],
    );
  }
  List<Widget>tabs =[
    const MentalHeathTap(),
    const CategoryTap(),
    const ShopTap(),
    const ProfileTap(),
  ];
}
