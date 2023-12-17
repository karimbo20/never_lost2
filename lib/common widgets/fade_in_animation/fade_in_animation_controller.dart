import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:never_lost/features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(microseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(microseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(microseconds: 5000));
    Get.offAll(const WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(microseconds: 500));
    animate.value = true;
  }
}
