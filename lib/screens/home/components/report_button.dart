import 'package:flutter/material.dart';
import 'package:never_lost/screens/home/components/forms/report_form.dart';

class reportButton extends StatelessWidget {
  const reportButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Positioned(
        top: 20,
        left: 19,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Report(
                  title: '',
                ),
              ),
            );
            print("Report a missing person pressed");
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: kPrimaryColor,
              //     offset: Offset(0, 0),
              //     blurRadius: 4,
              //   ),
              // ],
            ),
            child: const Text(
              'Report a missing person',
              style: TextStyle(
                color: Color.fromRGBO(24, 111, 242, 1),
                fontFamily: 'Sora',
                fontSize: 16, // Adjusted font size
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
