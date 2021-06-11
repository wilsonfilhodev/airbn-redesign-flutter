import 'package:airbnb/models/feature_property.dart';
import 'package:airbnb/utils/static_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPropertyFeatures extends StatelessWidget {
  const BookingPropertyFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.3,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                Text(
                  StaticData.bookingProperties[index].title,
                  style: GoogleFonts.inter(),
                ),
                Text(
                  StaticData.bookingProperties[index].count,
                  style: GoogleFonts.inter(),
                )
              ],
            ),
          );
          ;
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              width: 1.0,
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: SizedBox(),
            ),
          );
        },
        itemCount: StaticData.bookingProperties.length,
      ),
    );
  }
}

Widget item(final BookingProperty bookingProperty) {
  final title = bookingProperty.title;
  print(title);
  final count = bookingProperty.count;

  return Expanded(
    child: Column(
      children: [
        Text(
          title,
          style: GoogleFonts.inter(),
        ),
        Text(
          count,
          style: GoogleFonts.inter(),
        )
      ],
    ),
  );
}
