import 'package:flutter/material.dart';

import '../assets.gen.dart';

const gradient1 = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xff565656), Color(0xff000000)],
);

const gradient2 = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xffF8E889), Color(0xffE4B764)],
);

class SocialsSignIn extends StatelessWidget {
  const SocialsSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const BG();
  }
}

class BG extends StatelessWidget {
  const BG({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Assets.bg.matchsLight.image(width: double.infinity, fit: BoxFit.fill),
        Column(
          children: [
            SizedBox(
              height: 75,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child:
                                Text('Ngày 12/09', textAlign: TextAlign.center),
                          ),
                          // const SizedBox(width: 4),
                          Expanded(
                            flex: 5,
                            child: Card.filled(
                              margin: EdgeInsets.zero,
                              color: Colors.black54,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Card.filled(
                                        color: Colors.red,
                                        margin: EdgeInsets.zero,
                                        child: Center(child: Text('Phút 45')),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Center(child: Text('0-0')),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.transparent,
                        // color: Colors.black,
                        child: const DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.w700),
                          child: Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [
                              Text('FT.HDP'),
                              Text('FT.O/U'),
                              Text('FT.1X2'),
                              Text('1H.HDP'),
                              Text('1H.O/U'),
                              Text('1H.1X2'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(children: [
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 52,
                          minWidth: 42,
                          maxHeight: 65,
                        ),
                        child: const Text('Belarus U21'),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 52,
                          minWidth: 42,
                          maxHeight: 65,
                        ),
                        child: const Text('Portugal U21'),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 52,
                          minWidth: 42,
                          maxHeight: 65,
                        ),
                        child: const Text('Hòa'),
                      ),
                    ]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.transparent,
                      // color: Colors.black,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                          SizedBox(height: 12),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                          SizedBox(height: 12),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.transparent,
                      // color: Colors.black,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                          SizedBox(height: 12),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                          SizedBox(height: 12),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [WCard(), WCard(), WCard()],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class WCard extends StatelessWidget {
  const WCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Container(
        constraints: const BoxConstraints(
            minHeight: 52, minWidth: 42, maxHeight: 65, maxWidth: 70),
        child: const Column(children: [
          Text('data'),
          Spacer(),
          Icon(Icons.upcoming, size: 12),
          Text('data')
        ]),
      ),
    );
  }
}
// class BG extends StatelessWidget {
//   const BG({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return ClipPath(
//     //   clipper: SideCutClipper(),
//     //   child: Container(
//     //     width: double.infinity,
//     //     height: 300,
//     //     decoration: const BoxDecoration(gradient: gradient2),
//     //   ),
//     // );
//     return Card(
//       child: Stack(alignment: Alignment.topCenter, children: [
//         Container(
//           width: double.infinity,
//           height: 100,
//           decoration: const BoxDecoration(gradient: gradient1),
//           child: const DefaultTextStyle(
//             style: TextStyle(color: Colors.amber),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Wrap(
//                     spacing: 8,
//                     runSpacing: 8,
//                     alignment: WrapAlignment.end,
//                     children: [
//                       Text('FT.HDP'),
//                       Text('FT.O/U'),
//                       Text('FT.1X2'),
//                       Text('1H.HDP'),
//                       Text('1H.O/U'),
//                       Text('1H.1X2'),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 12)
//               ],
//             ),
//           ),
//         ),
//         Assets.bg.matchsLight.image(),
//         ClipPath(
//           clipper: SideCutClipper(),
//           child: Container(
//             width: double.infinity,
//             height: 300,
//             decoration: const BoxDecoration(
//               gradient: gradient2,
//               // border: GradientBoxBorder(gradient: gradient1),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }

class SideCutClipper extends CustomClipper<Path> {
  final radius = const Radius.circular(12);

  @override
  Path getClip(Size size) {
    // final path = Path()
    //   ..lineTo(0.0, size.height)
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(size.width, 0.0)
    //   ..quadraticBezierTo(size.width, 0.0, size.width - 20.0, 0.0)
    //   ..lineTo(40.0, 70.0)
    //   ..quadraticBezierTo(10.0, 85.0, 0.0, 120.0)
    //   ..close();

    final path = Path()
      ..addRRect(
        RRect.fromLTRBAndCorners(
          0,
          0,
          size.width / 4,
          size.height,
          topRight: radius,
          topLeft: radius,
          bottomLeft: radius,
        ),
      )
      ..addRRect(
        RRect.fromLTRBAndCorners(
          size.width / 4,
          size.height / 4,
          size.width,
          size.height,
          topRight: radius,
          bottomRight: radius,
        ),
      )
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
