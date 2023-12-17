import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/common%20widgets/form/form_header_widget.dart';
import 'package:never_lost/constants/image_strings.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(
                height: tDefaultSize * 4,
              ),
              const FormHeaderWidget(
                image: kForgetPassword,
                title: TForgetPassword,
                subTitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tPhoneNo),
                        hintText: tPhoneNo,
                        prefixIcon: Icon(Icons.mobile_friendly_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const OTPScreen());
                        },
                        child: const Text(tNext),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
