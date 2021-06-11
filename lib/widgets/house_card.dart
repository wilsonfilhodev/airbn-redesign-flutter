import 'package:airbnb/models/property.dart';
import 'package:airbnb/pages/single_property_page.dart';
import 'package:airbnb/utils/constants.dart';
import 'package:airbnb/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseCard extends StatelessWidget {
  final Property house;

  const HouseCard({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextPage(context, SinglePropertyPage());
      },
      child: Container(
        height: ScreenUtil().setHeight(300.0),
        width: ScreenUtil().setWidth(250.00),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xFFF4F5F6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: AssetImage(
                        house.imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house.description,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "From\n",
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(64, 74, 106, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: house.price,
                              style: GoogleFonts.inter(
                                  color: Color.fromRGBO(33, 45, 82, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.favorite, color: Constants.primaryColor,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
