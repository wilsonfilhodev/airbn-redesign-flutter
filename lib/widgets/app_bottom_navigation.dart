import 'package:airbnb/models/bottom_bar_item.dart';
import 'package:airbnb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  String activePage = "home";

  void setActivePage(String page) {
    setState(() {
      activePage = page;
    });
  }

  List<BottomBarItem> items = [];

  @override
  void initState() {
    items = [
      BottomBarItem(
          key: "home",
          icon: FontAwesomeIcons.home,
          onPressed: () {
            setActivePage("home");
          }),
      BottomBarItem(
          key: "favorites",
          icon: FontAwesomeIcons.heart,
          onPressed: () {
            setActivePage("favorites");
          }),
      BottomBarItem(
          key: "menu",
          icon: FontAwesomeIcons.bars,
          onPressed: () {
            setActivePage("menu");
          }),
      BottomBarItem(
          key: "messages",
          icon: FontAwesomeIcons.comment,
          onPressed: () {
            setActivePage("messages");
          }),
      BottomBarItem(
          key: "profile",
          icon: FontAwesomeIcons.user,
          onPressed: () {
            setActivePage("profile");
          }),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      height: ScreenUtil().setHeight(65.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items
            .map(
              (BottomBarItem item) =>
                  getBottomWidgetItem(item, activePage == item.key),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomWidgetItem(BottomBarItem item, bool isCative) {
  return Container(
    height: ScreenUtil().setHeight(62.0),
    width: ScreenUtil().setWidth(62.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isCative ? Constants.primaryColor : Colors.transparent,
    ),
    child: Container(
      child: isCative
          ? Container(
              child: IconButton(
              icon: Icon(
                item.icon,
                color: Colors.white,
              ),
              onPressed: () {},
            ))
          : Container(
              child: IconButton(
                icon: Icon(item.icon, color: Color.fromRGBO(156, 166, 201, 1)),
                onPressed: item.onPressed,
              ),
            ),
    ),
  );
}
