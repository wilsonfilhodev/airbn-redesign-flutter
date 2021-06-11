import 'package:airbnb/pages/dashboard.dart';
import 'package:airbnb/utils/constants.dart';
import 'package:airbnb/utils/helper.dart';
import 'package:airbnb/widgets/input_widget.dart';
import 'package:airbnb/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "E-mail",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                color: Color.fromRGBO(138, 150, 191, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InputWidget(),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Senha",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                color: Color.fromRGBO(138, 150, 191, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InputWidget(
              obscuredText: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Confirme sua Senha",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                color: Color.fromRGBO(138, 150, 191, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InputWidget(
              obscuredText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            PrimaryButton(
                onPressed: () {
                  Helper.nextPage(context, Dashboard());
                },
                text: "Get Started"),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  Text("Already have account?", style: GoogleFonts.inter(
                    fontSize: 14.0,
                    color: Color.fromRGBO(64, 74, 106, 1),
                  ),),
                  TextButton(
                    onPressed: () {},
                    child: Text("Log in", style: GoogleFonts.inter(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryColor,
                  ),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(onTap: () {}, child: Image.asset("assets/images/google.png")),
                  SizedBox(width: 10.0,),
                  GestureDetector(onTap: () {}, child: Image.asset("assets/images/facebook.png")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
