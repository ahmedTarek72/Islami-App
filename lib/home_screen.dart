import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/hadeth_screen.dart';
import 'screens/quran_screen.dart';
import 'screens/radio_screen.dart';
import 'screens/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    const QuranScreen(),
    const HadethScreen(),
    const SebhaScreen(),
    const RadioScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        resizeToAvoidBottomInset: true,

        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffB7935F),
            selectedItemColor: const Color(0xff707070),
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                ),
                label: 'القرأن',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/hadeth.png'),
                ),
                label: 'الحديث',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                ),
                label: 'التسبيح',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_video_rounded),
                label: 'الراديو',
              ),
            ],
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),

        body: Stack(alignment: Alignment.center, children: [
          Image.asset(
            'assets/images/back_ground.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: screens[currentIndex],
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ]), 
      ),
    );
  }
}
