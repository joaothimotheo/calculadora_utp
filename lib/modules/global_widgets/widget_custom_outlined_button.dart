import 'package:calculadora_utp/theme/style.dart';
import 'package:calculadora_utp/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatefulWidget {
  const CustomOutlinedButton({
    Key? key,
    this.height = 45.0,
    this.width = double.maxFinite,
    this.text = "",
    required this.onPressed,
    this.color = kPrimaryColor,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final Function onPressed;
  final Color color;

  @override
  _CustomOutlinedButtonState createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            widget.onPressed();
          });
        },
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: poppinsRegular18White,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: widget.color,
          side: const BorderSide(color: Colors.white),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
