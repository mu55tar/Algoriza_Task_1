import 'package:flutter/material.dart';
import 'package:algoriza_task_1/componant/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final double borderRadius;
  final double height;
  final Color color;
  final double width;
  final double fontsize;
  final String text;
  final VoidCallback onTap;
  final Color Fontcolor;
  final bool IsSocialMediaLoginButton;
  final Color borderColor;

  const CustomButton(
      {Key? key,
      this.borderColor = defultColor,
      this.IsSocialMediaLoginButton = false,
      this.width = double.infinity,
      this.height = 55,
      this.borderRadius = 25,
      this.Fontcolor = Colors.white,
      required this.text,
      this.fontsize = 16,
      this.color = defultColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        //color: color,
        hoverColor: Color(0xFF8D8E98),
        onPressed: onTap,
        child: IsSocialMediaLoginButton
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 25,
                    height: 25,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontsize,
                      color: Fontcolor,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: fontsize,
                  color: Fontcolor,
                ),
              ),
      ),
    );
  }
}
