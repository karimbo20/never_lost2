import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/common%20widgets/fade_in_animation/animation_design.dart';
import 'package:never_lost/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:never_lost/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:never_lost/constants/image_strings.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/features/authentication/screens/login/login_screen.dart';
import 'package:never_lost/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                      tag: 'welcome-image-tag',
                      child: Image(
                          image: AssetImage(kWelcomeScreenImage),
                          height: height * 0.6)),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(
                            tLogin.toUpperCase(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUPScreen()),
                          child: Text(
                            tSignup.toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
