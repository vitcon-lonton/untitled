// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:material_3_demo/ball/components.dart';
// import 'package:morphable_shape/morphable_shape.dart';

// import '../assets.gen.dart';

// const gradient1 = LinearGradient(
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
//   colors: [Color(0xff565656), Color(0xff000000)],
// );

// const gradient2 = LinearGradient(
//   begin: Alignment.centerLeft,
//   end: Alignment.centerRight,
//   colors: [Color(0xffF8E889), Color(0xffE4B764)],
// );

// const gradient3 = LinearGradient(
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
//   colors: [Color(0xffF8E889), Color(0xffE4B764)],
// );

// class Component1 extends Stack {
//   const Component1({super.key});

//   @override
//   AlignmentGeometry get alignment => Alignment.topCenter;

//   @override
//   List<Widget> get children {
//     return [
//       const _Layer1(),
//       const _Layer2(),
//       const _Layer3(),
//     ];
//   }
// }

// class _Layer1 extends StatelessWidget {
//   const _Layer1();

//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox(
//       width: double.infinity,
//       child: PrimaryGradientButton(
//         child: Row(children: [
//           Spacer(),
//           Flexible(
//             child: Text(
//               'Man City',
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           Spacer(flex: 6),
//           Flexible(
//             child: Text(
//               'Brighton',
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           Spacer(),
//         ]),
//       ),
//     );
//   }
// }

// class _Layer3 extends StatelessWidget {
//   const _Layer3();

//   @override
//   Widget build(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//       // Flexible(child: Text('Man City')),
//       // Spacer(),
//       SizedBox.square(
//         dimension: 60,
//         child: Assets.logo.manCity.image(fit: BoxFit.contain),
//       ),
//       const SizedBox(width: 130, child: Texts()),
//       SizedBox.square(
//         dimension: 60,
//         child: Assets.logo.brighton.image(fit: BoxFit.contain),
//       ),
//       // Flexible(child: Text('Brighton')),
//     ]);
//   }
// }

// class _Layer2 extends StatelessWidget {
//   const _Layer2();

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RectangleShapeBorder(
//         borderRadius: DynamicBorderRadius.only(
//           bottomRight:
//               DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
//           bottomLeft:
//               DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
//         ),
//       ),
//       child: Container(
//         width: 180,
//         height: 70,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xffF8E889),
//               Color(0xffE4B764),
//             ],
//           ),
//         ),
//         // decoration: const BoxDecoration(gradient: gradient3),
//       ),
//     );
//   }
// }

// class Texts extends StatelessWidget {
//   const Texts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const DefaultTextStyle(
//       style: TextStyle(fontWeight: FontWeight.w900),
//       child: Column(
//         children: [
//           SizedBox(height: 6),
//           Text('NGOAI HANG ANH', style: TextStyle(fontSize: 12)),
//           SizedBox(height: 2),
//           Text('0:1', style: TextStyle(fontSize: 20)),
//           SizedBox(height: 2),
//           Text(
//             '<<Ty Le keo>>',
//             style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // class Bg extends StatelessWidget {
// //   const Bg({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Card(
// //           shape: RectangleShapeBorder(
// //             borderRadius: DynamicBorderRadius.only(
// //               // topLeft: DynamicRadius.circular(10.toPXLength),
// //               // bottomRight: DynamicRadius.elliptical(
// //               //     20.0.toPXLength, 52.0.toPercentLength),
// //               // bottomLeft: DynamicRadius.circular(30.0.toPXLength),
// //               bottomRight:
// //                   DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
// //               bottomLeft:
// //                   DynamicRadius.elliptical(45.0.toPXLength, 80.0.toPXLength),
// //             ),
// //           ),
// //           // shape: const TrapezoidShapeBorder(
// //           //   inset: Length(10),
// //           //   border: DynamicRadius.circular(30.0.toPXLength),
// //           // ),
// //           child: Container(
// //             width: 210,
// //             height: 70,
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 begin: Alignment.topCenter,
// //                 end: Alignment.bottomCenter,
// //                 colors: [
// //                   Color(0xffF8E889),
// //                   Color(0xffE4B764),
// //                 ],
// //               ),
// //             ),
// //             // decoration: const BoxDecoration(gradient: gradient3),
// //           ),
// //         ),
// //         // Card(
// //         //   // shape: RectangleShapeBorder(
// //         //   //   borderRadius: DynamicBorderRadius.only(
// //         //   //     // topLeft: DynamicRadius.circular(10.toPXLength),
// //         //   //     bottomRight:
// //         //   //         DynamicRadius.elliptical(60.0.toPXLength, 10.0.toPercentLength),
// //         //   //     bottomLeft: DynamicRadius.circular(30.0.toPXLength),
// //         //   //   ),
// //         //   // ),
// //         //   // shape: const TrapezoidShapeBorder(
// //         //   //   inset: Length(10),
// //         //   //   border: DynamicRadius.circular(30.0.toPXLength),
// //         //   // ),
// //         //   child: Container(
// //         //     width: 180,
// //         //     height: 52,
// //         //     decoration: const BoxDecoration(
// //         //       gradient: LinearGradient(
// //         //         begin: Alignment.topCenter,
// //         //         end: Alignment.bottomCenter,
// //         //         colors: [
// //         //           Color(0xffF8E889),
// //         //           Color(0xffE4B764),
// //         //         ],
// //         //       ),
// //         //     ),
// //         //     // decoration: const BoxDecoration(gradient: gradient3),
// //         //   ),
// //         // ),
// //         // Card(
// //         //   // shape: RectangleShapeBorder(
// //         //   //   borderRadius: DynamicBorderRadius.only(
// //         //   //     // topLeft: DynamicRadius.circular(10.toPXLength),
// //         //   //     bottomRight:
// //         //   //         DynamicRadius.elliptical(60.0.toPXLength, 10.0.toPercentLength),
// //         //   //     bottomLeft: DynamicRadius.circular(30.0.toPXLength),
// //         //   //   ),
// //         //   // ),
// //         //   // shape: TrapezoidShapeBorder(
// //         //   //   border: const DynamicBorderSide(
// //         //   //     shift: Dimension(21, 12),
// //         //   //   ),
// //         //   // ),
// //         //   // shape: const CustomRoundedRectangleBorder(
// //         //   //   borderRadius: BorderRadius.only(
// //         //   //     bottomLeft: Radius.circular(35),
// //         //   //     bottomRight: Radius.circular(35),
// //         //   //   ),
// //         //   // ),
// //         //   shape: const RoundedRectangleBorder(
// //         //     borderRadius: BorderRadius.vertical(
// //         //       bottom: Radius.circular(100),
// //         //     ),
// //         //   ),
// //         //   child: DefaultTextStyle(
// //         //     style: const TextStyle(fontWeight: FontWeight.w900),
// //         //     child: Container(
// //         //       width: 122,
// //         //       height: 30,
// //         //       decoration: const BoxDecoration(
// //         //         gradient: gradient3,
// //         //         // shape: BoxShape.rectangle,
// //         //         // shape: ShapeDecoration(shape: shape)
// //         //       ),
// //         //     ),
// //         //   ),
// //         // ),
// //       ],
// //     );
// //   }
// // }
