
import 'package:c11_exam_sun_online/audi_books/tabs/home.dart';
import 'package:c11_exam_sun_online/audi_books/tabs/library.dart';
import 'package:c11_exam_sun_online/audi_books/tabs/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xff4838D1),
          onTap: (value) {
            setState(() {
              currentIndex=value;
            });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded,),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_books,),label: "library"),
      ]),
      body: tabs[currentIndex],
    );
  }
  List<Widget>tabs =[
    const HomeTap(),
    const SearchTap(),
    const LibraryTap()
  ];
}
