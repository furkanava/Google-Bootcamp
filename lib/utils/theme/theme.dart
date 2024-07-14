import 'package:chaboo/utils/theme/custom_themes/appbar_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/chip_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/elevated_bttn_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/outlaned_bttn_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/text_file_theme.dart';
import 'package:chaboo/utils/theme/custom_themes/text_theme.dart';

import 'package:flutter/material.dart';

class CBAppTheme{
  CBAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CBTextTheme.lightTextTheme,
    chipTheme: CBChipTheme.lightChipTheme,
    appBarTheme: CBAppBarTheme.lightAppBarTheme,
    checkboxTheme: CBCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: CBBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CBElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CBOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CBTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CBTextTheme.darkTextTheme,
    chipTheme: CBChipTheme.darkChipTheme,
    appBarTheme: CBAppBarTheme.darkAppBarTheme,
    checkboxTheme: CBCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: CBBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CBElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CBOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CBTextFormFieldTheme.darkInputDecorationTheme,
  );

}