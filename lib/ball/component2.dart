import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../assets.gen.dart';
import 'components.dart';
import 'icons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  static const rowDivider = SizedBox(width: 12);
  static const colDivider = SizedBox(height: 12);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          SizedBox.square(
            dimension: 120,
            child: Assets.logo.leo.image(fit: BoxFit.contain),
          ),
          rowDivider,
          const Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(children: [
                    Expanded(
                      child: WButton1(onPressed: null, child: Text('BLV: LEO')),
                    ),
                    rowDivider,
                    Expanded(child: _ChangeBLVButton()),
                  ]),
                ),
                colDivider,
                Expanded(
                  child: Row(children: [
                    Expanded(child: _FollowButton()),
                    rowDivider,
                    Expanded(child: _Actions()),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChangeBLVButton extends StatelessWidget {
  const _ChangeBLVButton();

  @override
  Widget build(BuildContext context) {
    return WButton1(
      onPressed: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 12),
          Text('DOI BLV'),
          SizedBox(width: 12),
          AppIcon(AIcons.change),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _FollowButton extends StatelessWidget {
  const _FollowButton();

  @override
  Widget build(BuildContext context) {
    return WButton1(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: WButton1(
              onPressed: () {},
              child: Text('data'),
            ),
          ),
          SizedBox(width: 12),
          // Text('Follow'),
          // SizedBox(width: 12),
          AppIcon(AIcons.person),
          Text('8,844', maxLines: 1),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions();

  @override
  Widget build(BuildContext context) {
    return const Wrap(alignment: WrapAlignment.spaceAround, children: [
      WIconButton(icon: AppIcon(AIcons.vector)),
      WIconButton(icon: AppIcon(AIcons.share)),
      WIconButton(icon: AppIcon(AIcons.download)),
    ]);
  }
}
