import 'package:flutter/material.dart';

import '../assets.gen.dart';
import '../theme/components.dart';
import '../theme/app_icon.dart';

class Commentator extends StatelessWidget {
  const Commentator({super.key});

  static const minWidth = 190.0;
  static const spacing = 24;
  static const rowDivider = SizedBox(width: 12);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          SizedBox.square(
              dimension: 120,
              child: Assets.logo.leo.image(fit: BoxFit.contain)),
          rowDivider,
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final width = constraints.biggest.width;
                final x = width / 2 - spacing;
                final maxWidth = x >= minWidth ? x : width - spacing;
                final btnConstraints =
                    BoxConstraints(minWidth: minWidth, maxWidth: maxWidth);

                return Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  alignment: WrapAlignment.spaceAround,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: btnConstraints,
                      child: PrimaryGradientButton(
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('BLV: LEO')]),
                        onPressed: () {},
                      ),
                    ),
                    ConstrainedBox(
                        constraints: btnConstraints,
                        child: const _ChangeCommentatorButton()),
                    ConstrainedBox(
                        constraints: btnConstraints,
                        child: const _FollowCommentatorButton()),
                    ConstrainedBox(
                        constraints: btnConstraints, child: const _Actions()),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ChangeCommentatorButton extends StatelessWidget {
  const _ChangeCommentatorButton();

  @override
  Widget build(BuildContext context) {
    return PrimaryGradientButton(
      onPressed: () {},
      child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Đổi BLV'),
        SizedBox(width: 20),
        AppIcon(AppIcons.change),
      ]),
    );
  }
}

class _FollowCommentatorButton extends StatelessWidget {
  const _FollowCommentatorButton();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(width: 40),
        Expanded(
          child: PrimaryGradientButton(
            onPressed: () {},
            child: const Row(children: [
              SizedBox(width: 28),
              Spacer(),
              AppIcon(AppIcons.person),
              SizedBox(width: 12),
              Text('8,844', maxLines: 1),
              Spacer(flex: 3),
            ]),
          ),
        ),
      ]),
      SizedBox(
        width: 90,
        child: GradientOutlineButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.add), Text('Follow')],
          ),
        ),
      ),
    ]);
  }
}

class _Actions extends StatelessWidget {
  const _Actions();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GradientIconButton(icon: AppIcon(AppIcons.vector)),
        GradientIconButton(icon: AppIcon(AppIcons.share)),
        GradientIconButton(icon: AppIcon(AppIcons.download)),
      ]),
    );
  }
}
