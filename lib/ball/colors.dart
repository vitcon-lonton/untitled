import 'package:flutter/material.dart';

class AppColors {
  static const Color accent1 = Color(0xFFE4935D);
  static const Color accent2 = Color(0xFFBEABA1);
  static const Color offWhite = Color(0xFFF8ECE5);
  static const Color caption = Color(0xFF7D7873);
  static const Color body = Color(0xFF514F4D);
  static const Color greyStrong = Color(0xFF272625);
  static const Color greyMedium = Color(0xFF9D9995);
  static const Color white = Colors.white;
  static const Color yellow1 = Color(0xffF8E889);
  static const Color yellow2 = Color(0xffE4B764);
  static const Color black = Color(0xff000000);
  static const Color black2 = Color(0xff565656);

  static const gradient1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.black2, AppColors.black],
  );

  static const gradient2 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [AppColors.yellow1, AppColors.yellow2],
  );
}
