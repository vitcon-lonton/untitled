import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../assets.gen.dart';
import 'components.dart';

enum AIcons { vector, share, download, person, change }

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.size = 24,
  });

  final AIcons icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return switch (icon) {
      AIcons.vector =>
        SvgPicture.asset(Assets.icons.vector, width: size, height: size),
      AIcons.share =>
        SvgPicture.asset(Assets.icons.share, width: size, height: size),
      AIcons.download =>
        SvgPicture.asset(Assets.icons.download, width: size, height: size),
      AIcons.person =>
        SvgPicture.asset(Assets.icons.person, width: size, height: size),
      AIcons.change =>
        SvgPicture.asset(Assets.icons.change, width: size, height: size),
    };
  }
}

class IconsList extends StatelessWidget {
  const IconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Wrap(spacing: 16, runSpacing: 16, children: [
        for (var element in AIcons.values)
          WIconButton(tooltip: element.name, icon: AppIcon(element)),
      ]),
    ]);
  }
}

// class WIconButton extends StatelessWidget {
//   const WIconButton({super.key, required this.icon, this.tooltip});

//   final Widget icon;
//   final String? tooltip;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton.filledTonal(
//       iconSize: 24,
//       style: IconButton.styleFrom(
//         padding: EdgeInsets.zero,
//         // padding: const EdgeInsets.all(4),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//         elevation: 2,
//       ),
//       onPressed: () {},
//       tooltip: tooltip,
//       icon: icon,
//     );
//   }
// }
