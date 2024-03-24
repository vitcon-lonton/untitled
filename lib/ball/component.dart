import 'package:flutter/material.dart';
import 'package:morphable_shape/morphable_shape.dart';

import '../assets.gen.dart';
import 'colors.dart';
import 'components.dart';

class FilterForm extends Stack {
  const FilterForm({super.key});

  @override
  AlignmentGeometry get alignment => Alignment.topCenter;

  @override
  List<Widget> get children {
    return [
      const _Layer1(),
      const _Layer2(),
      const _Layer3(),
    ];
  }
}

class _Layer1 extends StatelessWidget {
  const _Layer1();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: WButton1(
        onPressed: null,
        child: Row(
          children: [
            SizedBox(width: 12),
            Spacer(),
            Flexible(
              flex: 2,
              child: Text(
                'Man City',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            SizedBox(width: 12),
            Spacer(flex: 8),
            SizedBox(width: 12),
            Spacer(),
            Flexible(
              flex: 2,
              child: Text(
                'Brighton',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}

class _Layer3 extends StatelessWidget {
  const _Layer3();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.square(
          dimension: 60,
          child: Assets.logo.manCity.image(fit: BoxFit.contain),
        ),
        const SizedBox(
          width: 130,
          child: _Texts(),
        ),
        SizedBox.square(
          dimension: 60,
          child: Assets.logo.brighton.image(fit: BoxFit.contain),
        ),
      ],
    );
  }
}

class _Layer2 extends StatelessWidget {
  const _Layer2();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RectangleShapeBorder(
        borderRadius: DynamicBorderRadius.only(
          bottomRight:
              DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
          bottomLeft:
              DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
        ),
      ),
      child: Container(
        width: 180,
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
    );
  }
}

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.w900),
      child: Column(children: [
        SizedBox(height: 6),
        Text('NGOAI HANG ANH', style: TextStyle(fontSize: 12)),
        SizedBox(height: 2),
        _ScorePoint(),
        SizedBox(height: 2),
        Text(
          '<<Tỷ lệ kèo>>',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
        ),
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
          Shadow(
              // bottomLeft
              offset: Offset(-1.5, -1.5),
              color: AppColors.yellow1),
          Shadow(
              // bottomRight
              offset: Offset(1.5, -1.5),
              color: AppColors.yellow1),
          Shadow(
              // topRight
              offset: Offset(1.5, 1.5),
              color: AppColors.yellow2),
          Shadow(
              // topLeft
              offset: Offset(-1.5, 1.5),
              color: AppColors.yellow2),
        ],
      ),
    );
  }
}
