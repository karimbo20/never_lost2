import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:never_lost/constants/constansts.dart';
import 'package:never_lost/nav%20bar/navBar.dart';
import 'package:never_lost/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBar(),
      drawer: NavBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          scaffoldKey.currentState
              ?.openDrawer(); // Open the drawer using scaffoldKey
        },
      ),
    );
  }
}
