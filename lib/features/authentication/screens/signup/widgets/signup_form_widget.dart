import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/screens/home/components/home_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => HomeScreen()),
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
