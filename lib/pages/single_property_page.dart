import 'package:airbnb/utils/constants.dart';
import 'package:airbnb/utils/helper.dart';
import 'package:airbnb/widgets/property_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking_screen.dart';

class SinglePropertyPage extends StatelessWidget {
  const SinglePropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/single-bg.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                width: size.width,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sovene Kiri",
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(33, 45, 82, 1),
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Constants.primaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.mapMarked,
                            size: 22,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Bashundhara, Dhaka, Bangladesh",
                            style: GoogleFonts.inter(
                              fontSize: 18.0,
                              color: Color.fromRGBO(64, 74, 104, 1),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      PropertyFeatures(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "This is one of the best houses you can get around the vicinity, check in to experience pleasure.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          height: 1.5,
                          color: Color.fromRGBO(138, 150, 190, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(56.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "120\$ /",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    )),
                                TextSpan(
                                    text: " night", style: GoogleFonts.inter()),
                              ]),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, BookingScreen());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(45.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "BOOK ROOM",
                                  style: GoogleFonts.inter(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 40.0,
                left: 16.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Color.fromRGBO(33, 45, 82, 1),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
