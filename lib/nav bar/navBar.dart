import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/constants/constansts.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/profile/profile_screen.dart';
import 'package:never_lost/screens/family_page/family_screen.dart';

import 'package:never_lost/screens/home/components/home_screen.dart';
import 'package:never_lost/screens/missing_page/missing_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    // Calculate the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.7, // Set the width to 50%
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                tNavName,
                style: TextStyle(color: kBackgroundColor),
              ),
              accountEmail:
                  Text(tNavEmail, style: TextStyle(color: kBackgroundColor)),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/5556/5556499.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/originals/22/8e/84/228e843eb2f374e08785c3c80991d258.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Get.back(); // Close the drawer
                Get.to(() => HomeScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.child_care_outlined),
              title: Text('Missing Children'),
              onTap: () {
                Get.back(); // Close the drawer
                Get.to(() => MissingScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.family_restroom),
              title: Text('Family Search'),
              onTap: () {
                Get.back(); // Close the drawer
                Get.to(() => FamilyScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Get.back(); // Close the drawer
                Get.to(const ProfileScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
