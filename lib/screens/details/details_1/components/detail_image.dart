import 'package:flutter/material.dart';
import 'package:never_lost/constants/constansts.dart';

class detailImage extends StatelessWidget {
  const detailImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/missing 2.png"),
            ),
          ),
        ),
        Positioned(
          top: 55,
          left: 15,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
              shape: BoxShape.circle, // Set the shape to circle
              color: Colors.white, // Adjust the color as needed
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black, // Adjust the icon color as needed
            ),
          ),
        ),
      ],
    );
  }
}
