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
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue), // Add a blue border
        borderRadius: BorderRadius.circular(
            10), // Optional: Add border radius for rounded corners
      ),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Ahmed Yassin\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
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
                  fontSize: 15,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Gender\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Male",
                style: TextStyle(
                  fontSize: 15,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Location\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "New Cairo, Cairo",
                style: TextStyle(
                  fontSize: 15,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Date Missed\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "12/05/2007",
                style: TextStyle(
                  fontSize: 15,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Cloth Found\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
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
        ],
      ),
    );
  }
}
