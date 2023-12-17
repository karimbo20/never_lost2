import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:never_lost/constants/sizes.dart';
import 'package:never_lost/constants/text_strings.dart';
import 'package:never_lost/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:never_lost/features/authentication/screens/forget_password/forget_password_options/forget_btn_widget.dart';
import 'package:never_lost/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 30.0),
            ForgetBtnWidget(
              onTap: () {
                print('taped');
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEMail,
            ),
            const SizedBox(height: 25.0),
            ForgetBtnWidget(
              btnIcon: Icons.mobile_friendly_outlined,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {
                print('taped');
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordPhoneScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
