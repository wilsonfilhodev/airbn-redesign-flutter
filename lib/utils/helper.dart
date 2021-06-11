import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helper {
  static nextPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
}
