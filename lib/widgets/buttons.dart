import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  final Color textColor;
  const ColoredButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceHeight = MediaQuery.of(context).size.height;
    final double _deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: _deviceWidth * 0.4,
        height: _deviceHeight * 0.08,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 23,
                ),
          ),
        ),
      ),
    );
  }
}

class SmallColoredButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  final Color textColor;
  final bool hasBorder;
  const SmallColoredButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.textColor,
    required this.hasBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _deviceHeight = MediaQuery.of(context).size.height;
    final double _deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: _deviceWidth * 0.3,
        height: _deviceHeight * 0.05,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: hasBorder == true ? Colors.black : Colors.transparent,
            width: 1.2,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
          ),
        ),
      ),
    );
  }
}
