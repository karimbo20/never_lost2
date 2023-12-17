import 'package:flutter/material.dart';
import 'package:never_lost/constants/constansts.dart';
import 'package:never_lost/screens/home_screen.dart';

class FamilyForm extends StatefulWidget {
  final String title;

  FamilyForm({Key? key, required this.title}) : super(key: key);

  @override
  _FamilyFormState createState() => _FamilyFormState();
}

class _FamilyFormState extends State<FamilyForm> {
  String selectedGender = 'Male';
  String selectedAgeRange = '18-25';
  String selectedLocation = 'Location 1';
  DateTime? selectedDateMissing;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Family Finder',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Container(
                width: 101,
                height: 98,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(101, 98)),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Container(
                width: 26,
                height: 27,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 101,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            offset: Offset(0, 2),
                            blurRadius: 15,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 35,
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Color.fromRGBO(24, 111, 242, 1),
                          fontFamily: 'Sora',
                          fontSize: 23,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Name',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Mobile Number',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextField(
                    controller: mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your mobile number',
                    ),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Gender',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: DropdownButton<String>(
                    underline: Container(),
                    isExpanded: true,
                    value: selectedGender,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGender = newValue!;
                      });
                    },
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Age',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: DropdownButton<String>(
                    underline: Container(),
                    isExpanded: true,
                    value: selectedAgeRange,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAgeRange = newValue!;
                      });
                    },
                    items: <String>['18-25', '26-35', '36-50', '50+']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Date Missing',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              InkWell(
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null && pickedDate != selectedDateMissing) {
                    setState(() {
                      selectedDateMissing = pickedDate;
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 8),
                        Text(
                          selectedDateMissing != null
                              ? '${selectedDateMissing!.day}/${selectedDateMissing!.month}/${selectedDateMissing!.year}'
                              : 'Select Date',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                'Location',
                style: TextStyle(
                  color: Color.fromRGBO(24, 111, 242, 1),
                  fontFamily: 'YourFontFamily',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: DropdownButton<String>(
                    underline: Container(),
                    isExpanded: true,
                    value: selectedLocation,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLocation = newValue!;
                      });
                    },
                    items: <String>['Location 1', 'Location 2', 'Location 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),

              // Submit and Cancel Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            'Confirm Your Report',
                            style: TextStyle(color: Colors.blue),
                          ),
                          content: Text('Your alert content goes here.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(
                                    context); // Close the alert dialog
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for Submit button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Change the background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Change the border radius
                      ),
                    ),
                    child: Text('Cancel'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
