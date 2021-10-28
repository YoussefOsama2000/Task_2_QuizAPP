import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? splashColor;
  final Color? highlightColor;
  final VoidCallback? onPressed;
  final String? textString;
  final TextStyle? textStyle;
  final double? borderRadius;
  final Color? fillingColor;
  final Color? borderColor;

  CustomButton(
      {this.splashColor,
      this.highlightColor,
      @required this.onPressed,
      @required this.textString,
      this.textStyle,
      this.borderRadius,
      this.fillingColor,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: InkWell(
        splashColor: splashColor ?? Colors.greenAccent.withOpacity(0.2),
        highlightColor: highlightColor ?? Colors.greenAccent.withOpacity(0.2),
        onTap: onPressed,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              textString ?? '',
              textAlign: TextAlign.center,
              style: textStyle ??
                  TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 50),
            color: fillingColor ?? Colors.transparent,
            border: Border.all(
              color: borderColor ?? Colors.teal,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
