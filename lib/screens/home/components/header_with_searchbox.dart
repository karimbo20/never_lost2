import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:never_lost/constants/constansts.dart';

class HeaderWithSearchBox extends StatefulWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _HeaderWithSearchBoxState createState() => _HeaderWithSearchBoxState();
}

class _HeaderWithSearchBoxState extends State<HeaderWithSearchBox> {
  String selectedLocation = 'Cairo, Egypt';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: widget.size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 30 + kDefaultPadding,
            ),
            height: widget.size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Never Lost',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedLocation,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                      SizedBox(width: 6),
                      PopupMenuButton(
                        icon: Icon(Icons.arrow_drop_down_circle_outlined,
                            color: Colors.white),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry>[
                            PopupMenuItem(
                              value: 'Cairo, Egypt',
                              child: Text('Cairo, Egypt'),
                            ),
                            PopupMenuItem(
                              value: 'Alexandria, Egypt',
                              child: Text('Alexandria, Egypt'),
                            ),
                            PopupMenuItem(
                              value: 'Giza, Egypt',
                              child: Text('Giza, Egypt'),
                            ),
                            PopupMenuItem(
                              value: 'Aswan, Egypt',
                              child: Text('Aswan, Egypt'),
                            ),
                            PopupMenuItem(
                              value: 'Tanta, Egypt',
                              child: Text('Tanta, Egypt'),
                            ),
                            // Add more options as needed
                          ];
                        },
                        onSelected: (value) {
                          // Handle the selected option
                          setState(() {
                            selectedLocation = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: kPrimaryColor.withOpacity(0.23),
                        // surffix isn't working properly with SVG
                        // that's why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
