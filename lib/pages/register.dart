import 'package:airbnb/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Builder(builder: (BuildContext context) {
          return Container(
            height: _size.height - Scaffold.of(context).appBarMaxHeight!,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 30.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          RegisterForm(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
