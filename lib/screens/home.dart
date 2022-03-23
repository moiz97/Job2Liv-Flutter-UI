import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobs2liv/responsiveness/layout.dart';
import 'package:jobs2liv/widgets/buttons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 8, right: 8),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'JOBS2LIV',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  Spacers.verticalSpaceLarge(context),
                  Text(
                    "We Help You Find\nYour Job More Easily",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abrilFatface(
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                  Spacers.verticalSpaceSmall(context),
                  Text(
                    "Find job like drink water from glass no\nobstacle just flow in to your body",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Spacers.verticalSpaceLarge(context),
                  ColoredButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                  Spacers.verticalSpaceLarge(context),
                  Image.asset('assets/images/person_doddle.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
