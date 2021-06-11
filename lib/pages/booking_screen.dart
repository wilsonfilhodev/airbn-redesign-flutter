import 'package:airbnb/widgets/booking_details.dart';
import 'package:airbnb/widgets/booking_property_features.dart';
import 'package:airbnb/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SfDateRangePicker(
                  selectionMode: DateRangePickerSelectionMode.range,
                  headerStyle:
                      DateRangePickerHeaderStyle(textAlign: TextAlign.center),
                ),
              ),
              SizedBox(height: 10.0,),
              BookingDetails(),
              SizedBox(height: 10.0,),
              BookingPropertyFeatures(),
              SizedBox(height: 10.0,),
              PrimaryButton(onPressed: () {}, text: "BOOK ROM")
            ],
          ),
        ),
      ),
    );
  }
}
