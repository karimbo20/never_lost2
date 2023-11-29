import 'package:flutter/material.dart';

import 'package:never_lost/screens/home_screen.dart';

class ML extends StatefulWidget {
  const ML({Key? key}) : super(key: key);

  @override
  State<ML> createState() => _MLState();
}

class _MLState extends State<ML> {
  //variable declaration
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: <Widget>[
          HomeScreen(),

          //ProfilePage(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentPage,
      //   onTap: (page) {
      //     setState(() {
      //       currentPage = page;
      //       _page.animateToPage(
      //         page,
      //         duration: const Duration(milliseconds: 500),
      //         curve: Curves.easeInOut,
      //       );
      //     });
      //   },
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.solidHeart),
      //       label: 'Favorite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
      //       label: 'Appointments',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.solidUser),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
