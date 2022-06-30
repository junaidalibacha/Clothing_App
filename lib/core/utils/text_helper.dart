import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text headline1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.spaceGrotesk(
      color: color ?? Colors.green,
      fontSize: 44,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text headline2({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.spaceGrotesk(
      color: color ?? Colors.green,
      fontWeight: FontWeight.w600,
      fontSize: 30,
    ),
  );
}

Text headline3({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.spaceGrotesk(
      color: color ?? Colors.green,
      fontWeight: FontWeight.w600,
      fontSize: 28,
    ),
  );
}

Text titleText({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.spaceGrotesk(
      color: color ?? Colors.green,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text subTitleText({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.spaceGrotesk(
      color: color ?? Colors.green,
      fontSize: 12,
    ),
  );
}
