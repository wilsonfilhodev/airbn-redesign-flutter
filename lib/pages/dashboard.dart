import 'package:airbnb/utils/constants.dart';
import 'package:airbnb/utils/static_data.dart';
import 'package:airbnb/widgets/app_bottom_navigation.dart';
import 'package:airbnb/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/menu.svg"),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/dp.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Let's Find Your\nApartaments",
                  style: TextStyle(
                    fontSize: 25.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: ScreenUtil().setHeight(59.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your apartments...",
                            hintStyle: GoogleFonts.inter(
                              color: Color.fromRGBO(153, 163, 196, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          FontAwesomeIcons.search,
                          color: Constants.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: 18.0,
                      height: 1.5,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: StaticData.properties.length,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 18.0,
                      height: 1.5,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return HouseCard(
                        house: StaticData.properties[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: StaticData.properties.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
