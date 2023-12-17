import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';

import '../../../../common widgets/fade_in_animation/animation_design.dart';
import '../../../../common widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/constansts.dart';
import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: Image(image: AssetImage(kSplashImage)),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: tDefaultSize,
              leftBefore: -80,
            ),
            child: Obx(
              () => AnimatedPositioned(
                top: 80,
                left: controller.animate.value ? tDefaultSize : -80,
                duration: const Duration(milliseconds: 2200),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: controller.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: Obx(
              () => AnimatedPositioned(
                bottom: controller.animate.value ? 60 : 0,
                duration: const Duration(milliseconds: 2000),
                child: AnimatedOpacity(
                  opacity: controller.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 2000),
                  child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
