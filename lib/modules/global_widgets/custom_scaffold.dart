import 'package:calculadora_utp/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScaffold extends StatefulWidget {
  const CustomScaffold(
      {Key? key, required this.body, this.elevation, this.title})
      : super(key: key);

  final Widget body;
  final double? elevation;
  final String? title;

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: widget.elevation,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          "${widget.title}",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: widget.body,
    );
  }
}
