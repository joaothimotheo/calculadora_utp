import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.hint,
    this.label,
    required this.isPassword,
    this.icon,
    this.textInputType,
    this.filled = false,
    this.fillColor = Colors.white,
    this.textInputFormatter,
    this.hidePassword = Icons.visibility,
    required this.onPressed,
    this.obscureText = false,
    this.textInputAction,
    this.validator,
    this.controller,
    this.prefixText,
  }) : super(key: key);

  final String? hint;
  final String? label;
  final bool isPassword;
  final IconData? icon;
  final TextInputType? textInputType;
  final bool filled;
  final Color fillColor;
  final List<TextInputFormatter>? textInputFormatter;
  final IconData hidePassword;
  final Function onPressed;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final String? prefixText;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPhysics: const NeverScrollableScrollPhysics(),
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.textInputFormatter,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        prefixText: widget.prefixText,
        prefixIcon: Icon(widget.icon, color: Theme.of(context).primaryColor),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () => widget.onPressed(),
                icon: Icon(widget.hidePassword,
                    color: Theme.of(context).primaryColor),
              )
            : null,
        fillColor: widget.fillColor,
        filled: widget.filled,
        hintText: widget.hint,
        labelText: widget.label,
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 0.0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 0.0,
          ),
        ),
      ),
    );
  }

  isVisible(bool visible) {
    setState(() {
      visible = !visible;
    });
  }
}
