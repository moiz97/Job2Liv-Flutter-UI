import 'package:flutter/material.dart';

import 'package:jobs2liv/responsiveness/layout.dart';
import 'package:jobs2liv/widgets/buttons.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      width: _deviceWidth * 0.75,
      height: _deviceHeight * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.black,
          width: 1.2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            Spacers.horizontalSpaceTiny(context),
            Expanded(
              child: ColoredButton(
                text: 'Search',
                onPressed: () {},
                color: const Color(0xff2b3855),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircleButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      width: _deviceWidth * 0.01,
      height: _deviceHeight * 0.07,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: IconButton(
          icon: icon,
          onPressed: () => onPressed(),
          color: foregroundColor,
        ),
      ),
    );
  }
}

class FeaturedJobCard extends StatelessWidget {
  final String logoPath,
      companyName,
      jobTitle,
      jobLocation,
      jobType,
      experienceLevel,
      priority;
  const FeaturedJobCard({
    Key? key,
    required this.logoPath,
    required this.companyName,
    required this.jobTitle,
    required this.jobLocation,
    required this.jobType,
    required this.experienceLevel,
    required this.priority,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return Container(
        width: _deviceWidth * 0.65,
        height: _deviceHeight * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 1.2,
          ),
          color: priority == 'high' ? const Color(0xffeaab34) : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoPath,
                height: _deviceHeight * 0.1,
              ),
              Spacers.verticalSpaceSmall(context),
              Text(
                companyName,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Spacers.verticalSpaceTiny(context),
              Text(
                jobTitle,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Spacers.verticalSpaceTiny(context),
              Text(
                jobLocation,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      color: Colors.white,
                    ),
              ),
              Spacers.verticalSpaceSmall(context),
              Row(
                children: [
                  Expanded(
                    child: SmallColoredButton(
                      hasBorder: false,
                      text: jobType,
                      onPressed: () {},
                      color: const Color(0xff2b3855),
                      textColor: Colors.white,
                    ),
                  ),
                  Spacers.horizontalSpaceSmall(context),
                  Expanded(
                    child: SmallColoredButton(
                      hasBorder: false,
                      text: experienceLevel,
                      onPressed: () {},
                      color: const Color(0xff2b3855),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class RecentlyViewed extends StatelessWidget {
  final String logoPath,
      companyName,
      jobTitle,
      jobLocation,
      jobType,
      experienceLevel,
      priority;
  const RecentlyViewed(
      {Key? key,
      required this.logoPath,
      required this.companyName,
      required this.jobTitle,
      required this.jobLocation,
      required this.jobType,
      required this.experienceLevel,
      required this.priority})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: _deviceHeight * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 1.2,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              logoPath,
              height: _deviceHeight * 0.06,
            ),
            Spacers.horizontalSpaceSmall(context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Spacers.verticalSpaceTiny(context),
                Text(
                  jobTitle,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Spacers.verticalSpaceTiny(context),
                Text(
                  jobLocation,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            Spacers.horizontalSpaceSmall(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: _deviceHeight * 0.04,
                  width: _deviceWidth * 0.25,
                  child: SmallColoredButton(
                    hasBorder: true,
                    text: jobType,
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: _deviceHeight * 0.04,
                  width: _deviceWidth * 0.25,
                  child: SmallColoredButton(
                    hasBorder: true,
                    text: experienceLevel,
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
