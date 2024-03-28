import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/material.dart';
import 'demo/demo_screen.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // title: 'Flutter Demo',
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const DemoScreen(),
    );
  }
}
