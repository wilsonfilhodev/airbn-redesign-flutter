import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final sufixIcon;
  final bool obscuredText;

  const InputWidget(
      {Key? key,
      this.hintText = "",
      this.sufixIcon,
      this.obscuredText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: ScreenUtil().setHeight(59.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        obscureText: this.obscuredText,
        decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(124, 124, 124, 1),
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: this.sufixIcon == null
              ? null
              : Icon(
                  this.sufixIcon,
                  color: Color.fromRGBO(105, 108, 121, 1),
                ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
