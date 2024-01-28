import 'package:flutter/material.dart';
import 'package:flutter_learn_one/core/theme/colors.dart';

class AppTheme {
// this is the main theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.blackColor,
    primaryColor: AppColors.primaryColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 25,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: AppColors.whiteColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
        color: AppColors.whiteColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: AppColors.whiteColor,
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.primaryColor,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
        ),
        bodyMedium: TextStyle()),
  );
}
