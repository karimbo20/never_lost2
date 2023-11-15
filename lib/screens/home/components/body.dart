import 'package:flutter/material.dart';
import 'package:never_lost/screens/home/components/family_search.dart';
import 'package:never_lost/screens/home/components/header_with_searchbox.dart';
import 'package:never_lost/screens/home/components/missing_people.dart';
import 'package:never_lost/screens/home/components/plus_button.dart';
import 'package:never_lost/screens/home/components/title_with_more_btn.dart';
import 'package:never_lost/screens/home/components/title_with_more_btn_2.dart';
import 'package:never_lost/constansts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TitleWithMoreBtn(title: "Missing People", press: () {}),
                    MissingPeople(),
                    TitleWithMoreBtn2(title: "Family Finder", press: () {}),
                    FamilySearch(),
                    SizedBox(height: kDefaultPadding),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20.0, // Adjust the bottom value as needed
          right: 16.0, // Adjust the left value as needed
          child: PlusButton(),
        ),
      ],
    );
  }
}
