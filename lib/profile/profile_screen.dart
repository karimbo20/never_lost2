import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/constants/constansts.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/profile/update_profile_screen.dart';
import 'package:never_lost/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline4),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? Icons.sunny : Icons.cloud),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/5556/5556499.png'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kPrimaryColor,
                        ),
                        child: const Icon(Icons.edit,
                            size: 18.0, color: Colors.black)),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.headline4),
              Text(tProfileEmail, style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    (const UpdateProfileScreen()),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: kDarkColor),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Settings", icon: Icons.settings, onPress: () {}),
              ProfileMenuWidget(
                  title: "User Managment",
                  icon: Icons.verified_user_rounded,
                  onPress: () {}),
              const Divider(),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: Icons.logout,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
