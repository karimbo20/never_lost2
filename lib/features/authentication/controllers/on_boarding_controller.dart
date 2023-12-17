import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:never_lost/constants/image_strings.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/features/authentication/models/model_on_boarding.dart';

import '../../../constants/constansts.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    onBoardingPageWidget(
      model: OnBoardingModel(
        image: kOnBoardingImage,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgcolor: kOnBoardingPage1Color,
      ),
    ),
    onBoardingPageWidget(
      model: OnBoardingModel(
        image: kOnBoardingImage,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgcolor: kOnBoardingPage1Color,
      ),
    ),
    onBoardingPageWidget(
      model: OnBoardingModel(
        image: kOnBoardingImage,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgcolor: kOnBoardingPage1Color,
      ),
    ),
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
