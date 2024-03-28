import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'colors.dart';

const _borderRadius = BorderRadius.all(Radius.circular(80.0));

class PrimaryGradientButton extends StatelessWidget {
  const PrimaryGradientButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: AppColors.boxShadow,
        border: GradientBoxBorder(gradient: AppColors.gradient2),
        gradient: AppColors.gradient1,
        borderRadius: _borderRadius,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(50.0, 50.0),
          // padding: const EdgeInsets.symmetric(horizontal: 4),
          side: BorderSide.none,
          foregroundColor: AppColors.yellow1,
          disabledForegroundColor: AppColors.yellow1,
          // surfaceTintColor: Colors.black,
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          shape: const RoundedRectangleBorder(borderRadius: _borderRadius),
        ),
        child: child,
      ),
    );
  }
}

class SecondaryGradientButton extends StatelessWidget {
  const SecondaryGradientButton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.gradient2,
        borderRadius: _borderRadius,
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(50.0, 50.0),
          side: BorderSide.none,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
          ),
        ),
        child: child,
      ),
    );
  }
}

class GradientOutlineButton extends StatelessWidget {
  const GradientOutlineButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.style,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: GradientBoxBorder(gradient: AppColors.gradient2),
        borderRadius: _borderRadius,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          elevation: 0,
          minimumSize: const Size(50.0, 50.0),
          side: BorderSide.none,
          backgroundColor: AppColors.bg,
          foregroundColor: AppColors.black,
          // disabledForegroundColor: AppColors.yellow1,
          // surfaceTintColor: Colors.black,
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
          ),
        ).merge(style),
        child: child,
      ),
    );
  }
}

class GradientIconButton extends StatelessWidget {
  const GradientIconButton({
    super.key,
    required this.icon,
    this.tooltip,
    this.borderRadius = const BorderRadius.all(Radius.circular(6.0)),
    this.style,
  });

  final Widget icon;
  final String? tooltip;
  final BorderRadius? borderRadius;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppColors.boxShadow,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.gradient2.colors,
        ),
        borderRadius: borderRadius,
      ),
      child: IconButton.outlined(
        onPressed: () {},
        style: IconButton.styleFrom(
          side: BorderSide.none,
          padding: EdgeInsets.zero,
          // foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: borderRadius!),
        ).merge(style),
        tooltip: tooltip,
        icon: icon,
      ),
    );
  }
}
