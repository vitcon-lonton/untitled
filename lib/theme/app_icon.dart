import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../assets.gen.dart';

enum AppIcons {
  vector,
  share,
  download,
  person,
  change,
  arrowDown,
  arrowLeft,
  arrowRight,
  down,
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.size = 24,
  });

  final AppIcons icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return switch (icon) {
      AppIcons.vector =>
        SvgPicture.asset(Assets.icons.vector, width: size, height: size),
      AppIcons.share =>
        SvgPicture.asset(Assets.icons.share, width: size, height: size),
      AppIcons.download =>
        SvgPicture.asset(Assets.icons.download, width: size, height: size),
      AppIcons.person =>
        SvgPicture.asset(Assets.icons.person, width: size, height: size),
      AppIcons.change =>
        SvgPicture.asset(Assets.icons.change, width: size, height: size),
      AppIcons.arrowDown =>
        SvgPicture.asset(Assets.icons.arrowDown, width: size, height: size),
      AppIcons.arrowLeft =>
        SvgPicture.asset(Assets.icons.arrowLeft, width: size, height: size),
      AppIcons.arrowRight =>
        SvgPicture.asset(Assets.icons.arrowRight, width: size, height: size),
      AppIcons.down =>
        SvgPicture.asset(Assets.icons.down, width: size, height: size),
    };
  }
}
