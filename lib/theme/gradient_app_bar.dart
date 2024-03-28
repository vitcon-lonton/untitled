import 'package:flutter/material.dart';
import 'colors.dart';

class GradientAppBar extends AppBar {
  GradientAppBar({super.key});

  @override
  List<Widget>? get actions => [const SizedBox.shrink()];

  @override
  bool? get centerTitle => false;

  @override
  double? get titleSpacing => 0;

  @override
  double? get elevation => 0;

  @override
  double? get scrolledUnderElevation => 0;

  @override
  Color? get backgroundColor => Colors.transparent;

  @override
  Widget? get flexibleSpace {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradient2),
    );
  }
}
