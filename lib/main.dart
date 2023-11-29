//import 'package:fyp3/screens/booking_page.dart';
//import 'package:fyp3/screens/success_booked.dart';

import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';
import 'package:never_lost/ml.dart';
import 'package:never_lost/models/auth_model.dart';
import 'package:never_lost/screens/auth_page.dart';
import 'package:never_lost/utils/cofig.dart';
import 'package:provider/provider.dart';

//import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    //define ThemeData here
    return ChangeNotdfierProvider<AuthModel>(
      create: (context) => AuthModel(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Never Lost',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //pre-define input decoration
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: kPrimaryColor,
            border: Config.outlinedBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlinedBorder,
            floatingLabelStyle: TextStyle(color: kPrimaryColor),
            prefixIconColor: Colors.black38,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: kPrimaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        initialRoute: '/',
        routes: {
          //this is the initial route of the App
          //which is the auth page (login and sign up)
          '/': (context) => const AuthPage(),
          'main': (context) => const ML(),
          //'doc_details': (context) => const DoctorDetails(),

          //'doctor_by_category': (context) => const DoctorByCategory(),
        },
      ),
    );
  }
}
