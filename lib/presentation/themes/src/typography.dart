import 'package:flutter/material.dart';

class CettaTypography extends TextStyle {
  const CettaTypography._({
    Color? color,
    required FontWeight fontWeight,
    required double fontSize,
    required double height,
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: height,
        );

  factory CettaTypography.headline1({Color? color}) => CettaTypography._(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 20.25,
        height: 1.2,
      );

  factory CettaTypography.headline2({Color? color}) => CettaTypography._(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        height: 1.2,
      );

  factory CettaTypography.button({Color? color}) => CettaTypography._(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 14.22,
        height: 1.2,
      );

  factory CettaTypography.body1({Color? color}) => CettaTypography._(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 14.22,
        height: 1.4,
      );

  factory CettaTypography.body2({Color? color}) => CettaTypography._(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 12.64,
        height: 1.2,
      );
}
