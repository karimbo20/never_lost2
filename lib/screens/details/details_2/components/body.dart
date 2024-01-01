import 'package:flutter/material.dart';

import 'package:never_lost/screens/details/details_2/components/description_text.dart';
import 'package:never_lost/screens/details/details_2/components/detail_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          detailImage(size: size),
          DescriptionText(size: size),
        ],
      ),
    );
  }
}
