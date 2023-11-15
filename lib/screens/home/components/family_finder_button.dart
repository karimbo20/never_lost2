import 'package:flutter/material.dart';
import 'package:never_lost/screens/home/components/forms/family_form.dart';

class FamilyFinderButton extends StatelessWidget {
  const FamilyFinderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 48,
      left: 10,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FamilyForm(
                title: '',
              ),
            ),
          );
          print("Family Button Pressed");
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 0.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: const Text(
            'Family Finder',
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
    );
  }
}
