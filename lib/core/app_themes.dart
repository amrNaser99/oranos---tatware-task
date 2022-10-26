import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oranos/core/app_colors..dart';
import 'package:oranos/core/app_fonts.dart';
import 'package:oranos/core/app_values.dart';
import 'package:oranos/core/font_styles.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 10,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColors.main,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      titleTextStyle:
          getBoldStyle(fontColor: Colors.white, fontSize: FontSize.s16),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.mainGreen,
        textStyle: getMediumStyle(
          fontColor: Colors.white,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        minimumSize: Size(double.infinity, AppHeight.h45),
      ),
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll<Color>(AppColors.mainGreen),
      ),
    ),

    ///card
    cardTheme: CardTheme(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
    ),

    textTheme: TextTheme(
      // big titles
      bodyLarge: getBoldStyle(fontColor: Colors.black, fontSize: FontSize.s16),
      // small titles
      bodyMedium: getSemiBoldStyle(fontColor: Colors.black),
      // body content grey
      bodySmall: getMediumStyle(fontColor: Colors.grey),
      // body content primary
      displaySmall: getRegularStyle(fontColor: Colors.black),
    ),
  );
}
