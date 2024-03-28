import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color yellow1 = Color(0xffF8E889);
  static const Color yellow2 = Color(0xffE4B764);
  static const Color black = Color(0xff000000);
  static const Color black2 = Color(0xff565656);
  static const Color bg = Color(0xffF4F5F7);
  static const Color gold = Color(0xff9C5E00);

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

  static const boxShadow = [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 2), // changes position of shadow
    )
  ];
}
