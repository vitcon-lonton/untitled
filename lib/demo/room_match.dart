import 'package:flutter/material.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:untitled/theme/app_icon.dart';

import '../assets.gen.dart';
import '../theme/colors.dart';
import '../theme/components.dart';

class RoomMatch extends Stack {
  const RoomMatch({super.key});

  @override
  AlignmentGeometry get alignment => Alignment.topCenter;

  @override
  List<Widget> get children {
    return const [_Layer1(), _Layer2(), _Layer3()];
  }
}

class _Layer1 extends StatelessWidget {
  const _Layer1();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 4,
          child: PrimaryGradientButton(
            onPressed: null,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: 12),
              child: Text(
                'Man City',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Spacer(flex: 5),
        Expanded(
          flex: 4,
          child: PrimaryGradientButton(
            onPressed: null,
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 12),
              child: Text(
                'Brighton',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Layer3 extends StatelessWidget {
  const _Layer3();

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Spacer(flex: 3),
      SizedBox.square(
        dimension: 60,
        child: Assets.logo.manCity.image(fit: BoxFit.cover),
      ),
      const Expanded(flex: 4, child: _Texts()),
      // const SizedBox(width: 110, child: _Texts()),
      SizedBox.square(
        dimension: 60,
        child: Assets.logo.brighton.image(fit: BoxFit.cover),
      ),
      const Spacer(flex: 3),
    ]);
  }
}

class _Layer2 extends StatelessWidget {
  const _Layer2();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(flex: 3),
      Expanded(
        flex: 4,
        child: Card.outlined(
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          margin: EdgeInsets.zero,
          shape: RectangleShapeBorder(
            borderRadius: DynamicBorderRadius.only(
              bottomRight:
                  DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
              bottomLeft:
                  DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
            ),
          ),
          child: Container(
            // width: 150,
            height: 70,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                tileMode: TileMode.mirror,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.yellow2,
                  AppColors.yellow1,
                ],
              ),
            ),
          ),
        ),
      ),
      const Spacer(flex: 3),
    ]);
  }
}

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.w900),
      child: Column(children: [
        const SizedBox(height: 6),
        const Text('NGOẠI HẠNG ANH', style: TextStyle(fontSize: 12)),
        const SizedBox(height: 2),
        Row(children: [
          const Expanded(
            child: Column(children: [
              _ScorePoint(),
              SizedBox(height: 2),
              Text('<<Tỷ lệ kèo>>',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
            ]),
          ),
          SizedBox.square(
            dimension: 28,
            child: GradientIconButton(
              icon: const AppIcon(AppIcons.down, size: 10),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ])
      ]),
    );
  }
}

class _ScorePoint extends StatelessWidget {
  const _ScorePoint();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '0:1',
      style: TextStyle(
        inherit: true,
        fontSize: 24.0,
        color: Colors.black,
        fontWeight: FontWeight.w900,
        shadows: [
          // bottomLeft
          Shadow(offset: Offset(-1.5, -1.5), color: AppColors.yellow1),
          // bottomRight
          Shadow(offset: Offset(1.5, -1.5), color: AppColors.yellow1),
          // topRight
          Shadow(offset: Offset(1.5, 1.5), color: AppColors.yellow2),
          // topLeft
          Shadow(offset: Offset(-1.5, 1.5), color: AppColors.yellow2),
        ],
      ),
    );
  }
}
