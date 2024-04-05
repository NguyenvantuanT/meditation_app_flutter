import 'package:flutter/material.dart';
import 'package:meditation_app/pages/router/home_page.dart';
import 'package:meditation_app/pages/router/sleep_page.dart';
import 'package:meditation_app/themes/themes.dart';

class RouterPage extends StatefulWidget {
  const RouterPage({super.key});

  @override
  State<RouterPage> createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  final PageController _pageController = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children:const [
          HomePage(), 
          SleepPage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
            _pageController.jumpToPage(selectedIndex);
          });
        },
        items:const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: kColorPrimary ,
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.bed_outlined),
            label: "Sleep",
            backgroundColor: kColorPrimary ,
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Meditate",
            backgroundColor: kColorPrimary ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music_sharp),
            label: "Music",
            backgroundColor: kColorPrimary ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: "Afsar",
            backgroundColor: kColorPrimary ,
          ),
        ],
      ),
    );
  }
}
