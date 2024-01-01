import 'package:flutter/material.dart';
import 'package:never_lost/constants/constansts.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Rolla Ahmed\n",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "show map",
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.blue, thickness: 1),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Gender\n",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Female",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.blue, thickness: 1),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Location\n",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Nasr City, Cairo",
                    style: TextStyle(
                      fontSize: 15,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.blue, thickness: 1),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Date Missed\n",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "12/05/2015",
                    style: TextStyle(
                      fontSize: 15,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.blue, thickness: 1),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Cloth Found\n",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Blue Jeans, Red Shirt",
                    style: TextStyle(
                      fontSize: 15,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.blue, thickness: 1),
            ],
          ),
        ),
      ],
    );
  }
}
