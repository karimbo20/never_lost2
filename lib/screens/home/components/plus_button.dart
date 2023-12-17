import 'package:flutter/material.dart';
import 'package:never_lost/constants/constansts.dart';
import 'package:never_lost/screens/home/components/family_finder_button.dart';
import 'package:never_lost/screens/home/components/report_button.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Choose',
              style: TextStyle(color: kPrimaryColor),
            ),
            content: SizedBox(
              width: 188,
              height: 137,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 40,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  reportButton(),
                  Positioned(
                    top: 45,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                      ),
                    ),
                  ),
                  FamilyFinderButton(),
                  Positioned(
                    top: 85,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 98,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        print("File a report pressed");
                      },
                      child: const Text(
                        'File a report',
                        style: TextStyle(
                          color: Color.fromRGBO(24, 111, 242, 1),
                          fontFamily: 'Sora',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: SizedBox(
        width: 68,
        height: 75,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 6,
              right: 0,
              child: Container(
                width: 68,
                height: 66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: kPrimaryColor,
                      offset: Offset(0, 2),
                      blurRadius: 15,
                    ),
                  ],
                  color: Color.fromRGBO(243, 248, 254, 1),
                  border: Border.all(
                    color: Color.fromRGBO(25, 110, 238, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 6,
              right: 0,
              child: GestureDetector(
                child: Container(
                  width: 68,
                  height: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(243, 248, 254, 0),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Color.fromRGBO(24, 111, 242, 1),
                        fontFamily: 'Sora',
                        fontSize: 60,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
