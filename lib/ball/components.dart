import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'colors.dart';

class SettingsForm extends Column {
  const SettingsForm({super.key});

  @override
  List<Widget> get children {
    return [
      const SizedBox(height: 12),
      WButton1(child: const Text('Ok'), onPressed: () {}),
      const SizedBox(height: 12),
      const WButton2(child: Text('Ok')),
      const SizedBox(height: 12),
      const Gradient1(),
      const SizedBox(height: 12),
      const Gradient2(),
    ];
  }

  @override
  CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.stretch;
}

class WButton1 extends StatelessWidget {
  const WButton1({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        foregroundColor: AppColors.yellow1,
        disabledForegroundColor: AppColors.yellow1,
        // surfaceTintColor: Colors.black,
        textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
      child: Ink(
        decoration: const BoxDecoration(
          border: GradientBoxBorder(gradient: AppColors.gradient2),
          gradient: AppColors.gradient1,
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 50.0,
              minHeight: 50.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class WButton2 extends StatelessWidget {
  const WButton2({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        foregroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
      child: Ink(
        decoration: const BoxDecoration(
          gradient: AppColors.gradient2,
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 50.0,
              minHeight: 50.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class WIconButton extends StatelessWidget {
  const WIconButton({
    super.key,
    required this.icon,
    this.tooltip,
  });

  final Widget icon;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    // return IconButton.filledTonal(
    //   iconSize: 24,
    //   style: IconButton.styleFrom(
    //     padding: EdgeInsets.zero,
    //     // padding: const EdgeInsets.all(4),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    //     elevation: 2,
    //   ),
    //   onPressed: () {},
    //   tooltip: tooltip,
    //   icon: icon,
    // );
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.gradient2,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: IconButton.outlined(
        onPressed: () {},
        style: IconButton.styleFrom(
          side: BorderSide.none,
          padding: EdgeInsets.zero,
          // foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        tooltip: tooltip,
        icon: icon,
      ),
    );
  }
}

class Gradient1 extends StatelessWidget {
  const Gradient1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(gradient: AppColors.gradient1),
      child: const Center(
        child: Text(
          'From Night to Day',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class Gradient2 extends StatelessWidget {
  const Gradient2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(gradient: AppColors.gradient2),
      child: const Center(
        child: Text(
          'From Night to Day',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
