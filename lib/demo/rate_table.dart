import 'package:flutter/material.dart';
import '../theme/colors.dart';

import '../assets.gen.dart';

const topHeight = 75.0;
const height = 310.0;

class RateTable extends StatelessWidget {
  const RateTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(fit: StackFit.expand, children: [
        // Container(color: Colors.redAccent),
        Assets.bg.match.image(fit: BoxFit.fill, height: 310),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(children: [
            Expanded(flex: 5, child: _LeftPane()),
            Expanded(flex: 12, child: _RightPane())
          ]),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(children: [
            Spacer(flex: 5),
            Expanded(
              flex: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_Control()],
              ),
            )
          ]),
        ),
      ]),
    );
  }
}

class _LeftPane extends StatelessWidget {
  const _LeftPane();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      // color: Colors.black38,
      child: DefaultTextStyle(
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: topHeight - 8,
              child: const Row(children: [
                Flexible(flex: 2, child: _Date()),
                SizedBox(width: 4),
                Expanded(flex: 5, child: _PointCard()),
              ]),
            ),
            const SizedBox(height: 8),
            const Expanded(child: Center(child: Text('Belarus U21'))),
            const SizedBox(height: 4),
            const Expanded(
              child: Center(
                child: Text('Portugal U21',
                    style: TextStyle(color: AppColors.gold)),
              ),
            ),
            const SizedBox(height: 4),
            const Expanded(child: Center(child: Text('Hòa'))),
          ],
        ),
      ),
    );
  }
}

class _RightPane extends StatelessWidget {
  const _RightPane();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(children: [
        Expanded(
          child: _TableColumn(title: Text('FT.HDP'), children: [
            _TableCell(
              title: Text('+2.85'),
              subtitle: Text('1.83'),
              icon: _UpIc(),
            ),
            _TableCell(
              title: Text('-2.5'),
              subtitle: Text('2.03'),
              icon: _UpIc(),
            ),
            SizedBox.shrink(),
          ]),
        ),
        // SizedBox(width: 8),
        Expanded(
          child: _TableColumn(title: Text('FT.O/U'), children: [
            _TableCell(
              title: Text('O/3.5'),
              subtitle: Text('1.83'),
              icon: _DownIc(),
            ),
            _TableCell(
              title: Text('U/3.5'),
              subtitle: Text('2.03'),
              icon: _DownIc(),
            ),
            SizedBox.shrink(),
          ]),
        ),
        // SizedBox(width: 8),
        Expanded(
          child: _TableColumn(title: Text('FT.1X2'), children: [
            _TableCell(title: Text('Home'), subtitle: Text('19')),
            _TableCell(title: Text('Way'), subtitle: Text('1.13')),
            _TableCell(title: Text('Draw'), subtitle: Text('7')),
          ]),
        ),
        SizedBox(width: 4),
        _Divider(),
        SizedBox(width: 4),
        Expanded(
          child: _TableColumn(title: Text('1H.HDP'), children: [
            _TableCell(
              title: Text('+1'),
              subtitle: Text('1.83'),
              icon: _UpIc(),
            ),
            _TableCell(
              title: Text('-1'),
              subtitle: Text('2.03'),
              icon: _UpIc(),
            ),
            SizedBox.shrink(),
          ]),
        ),
        // SizedBox(width: 8),
        Expanded(
          child: _TableColumn(title: Text('1H.O/U'), children: [
            _TableCell(
              title: Text('O/1.5'),
              subtitle: Text('1.83'),
              icon: _DownIc(),
            ),
            _TableCell(
              title: Text('U/1.5'),
              subtitle: Text('2.03'),
              icon: _DownIc(),
            ),
            SizedBox.shrink(),
          ]),
        ),
        // SizedBox(width: 8),
        Expanded(
          child: _TableColumn(title: Text('1H.1X2'), children: [
            _TableCell(title: Text('Home'), subtitle: Text('12')),
            _TableCell(title: Text('Way'), subtitle: Text('1.44')),
            _TableCell(title: Text('Draw'), subtitle: Text('3')),
          ]),
        ),
      ]),
    );
  }
}

class _TableColumn extends StatelessWidget {
  const _TableColumn({
    required this.title,
    required this.children,
  });

  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          // color: Colors.black38,
          height: topHeight - 8,
          padding: const EdgeInsets.only(bottom: 8),
          child: DefaultTextStyle(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: AppColors.yellow1, fontWeight: FontWeight.w700),
            child: title,
          ),
        ),
        const SizedBox(height: 8),
        for (var element in children) Expanded(child: element),
      ],
    );
  }
}

class _Divider extends Column {
  const _Divider();

  @override
  List<Widget> get children {
    return [
      const SizedBox(height: topHeight + 4),
      Expanded(child: Container(width: 2, color: Colors.amberAccent)),
    ];
  }
}

class _PointCard extends StatelessWidget {
  const _PointCard();

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: AppColors.gradient1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Card.filled(
                color: Colors.red,
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Padding(
                  // padding: EdgeInsets.symmetric(horizontal: 4.0),
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                  child: Center(
                    child: Text(
                      'Phút 45 -',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.yellow1,
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Center(
              child: Text(
                '0-0',
                style: TextStyle(
                  color: AppColors.yellow1,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Date extends StatelessWidget {
  const _Date();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ngày 12/09',
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
    );
  }
}

class _UpIc extends StatelessWidget {
  const _UpIc();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_drop_up, color: Colors.green);
  }
}

class _DownIc extends StatelessWidget {
  const _DownIc();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_drop_down, color: Colors.red);
  }
}

class _TableCell extends StatelessWidget {
  const _TableCell({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
      margin: const EdgeInsets.all(2.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: AppColors.boxShadow,
      ),
      constraints: const BoxConstraints(
        minHeight: 52,
        minWidth: 42,
        maxHeight: 65,
        maxWidth: 90,
      ),
      child: Column(children: [
        DefaultTextStyle(
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: AppColors.yellow2),
          child: title ?? const Text('+2.5'),
        ),
        const Spacer(),
        IconTheme(
            data: const IconThemeData.fallback().copyWith(size: 20),
            child: icon ?? const SizedBox.shrink()),
        DefaultTextStyle(
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 12),
          child: subtitle ?? const Text('1.83'),
        ),
      ]),
    );
  }
}

class _Control extends StatelessWidget {
  const _Control();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Assets.icons.keoArrow2.image(),
        const SizedBox(width: 12),
        Column(children: [
          const Text(
            'SOBET',
            style: TextStyle(
              color: AppColors.yellow1,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Assets.icons.downArrow2.image(),
        ]),
        const SizedBox(width: 12),
        Assets.icons.arrow2.image(),
      ],
    );
  }
}
