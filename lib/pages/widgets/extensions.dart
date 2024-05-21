import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Apptextstyle {
  static final headline =
      GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold);
}

extension Intenxtension on int {
  width() {
    return SizedBox(
      width: toDouble(),
    );
  }

  height() {
    return SizedBox(
      height: toDouble(),
    );
  }
}
