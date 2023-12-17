import 'package:flutter/material.dart';

import '../../../constants/constansts.dart';
import '../../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

/* -- Light Theme -- */
  static final lightElevatedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: kPrimaryColor,
      side: BorderSide(color: kPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
/* -- Dark Theme -- */
  static final darkElevatedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: kPrimaryColor,
      side: BorderSide(color: kSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
