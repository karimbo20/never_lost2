import 'package:flutter/material.dart';
import 'package:never_lost/common%20widgets/form/form_header_widget.dart';
import 'package:never_lost/constants/image_strings.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:never_lost/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUPScreen extends StatelessWidget {
  const SignUPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: const Column(
            children: [
              FormHeaderWidget(
                image: kWelcomeScreenImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              SignUpFormWidget(),
              SignUpFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
