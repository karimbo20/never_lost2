import 'package:flutter/material.dart';
import 'package:never_lost/constants/image_strings.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(image: AssetImage(kGoogleLogo)),
            label: Text(
              tSigninWithGoodle.toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: tFormHeight - 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text: tLogin.toUpperCase(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
