import 'package:flutter/material.dart';
import 'package:toumai_dary/config/config.dart';

class CButton extends StatelessWidget {
  final String title;
  final Color titleColor, borderColor, color;
  final double radius, height;
  final bool border;
  final onPressed;

  const  CButton({Key? key, required this.title, required this.titleColor, required this.borderColor, required this.color, required this.radius, required this.height, required this.border, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
      child: Text(title, style: TextStyle(fontSize: 12, color: titleColor),
    ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          side: border
            ? BorderSide(color: borderColor ?? Config.colors.primaryColor, width: 2)
          : BorderSide.none,
          borderRadius: BorderRadius.circular(radius)
        )),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: height, horizontal: 20)),
      backgroundColor: MaterialStateProperty.all<Color>(color)
    ),
    );
  }
}
