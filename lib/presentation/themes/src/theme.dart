import 'package:cetta_course/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CettaTheme {
  const CettaTheme._();

  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CettaColor.darkSurface1,
        primaryColor: CettaColor.blue500,
        backgroundColor: CettaColor.black100,
        textTheme: GoogleFonts.robotoTextTheme(),
        tabBarTheme: TabBarTheme(
          labelColor: CettaColor.white,
          labelStyle: CettaTypography.button(color: CettaColor.white),
          unselectedLabelColor: CettaColor.black50,
          unselectedLabelStyle:
              CettaTypography.button(color: CettaColor.black50),
        ),
        cardTheme: const CardTheme(
          color: CettaColor.darkSurface2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: CettaColor.black50,
          thickness: 0.5,
        ),
      );

  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: CettaColor.white,
        primaryColor: CettaColor.blue500,
        backgroundColor: CettaColor.white,
        textTheme: GoogleFonts.robotoTextTheme(),
        tabBarTheme: TabBarTheme(
          labelColor: CettaColor.black100,
          labelStyle: CettaTypography.button(color: CettaColor.black100),
          unselectedLabelColor: CettaColor.black20,
          unselectedLabelStyle:
              CettaTypography.button(color: CettaColor.black20),
        ),
        cardTheme: const CardTheme(
          color: CettaColor.white,
          shadowColor: CettaColor.shadowColor,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: CettaColor.black20,
          thickness: 0.5,
        ),
      );
}
