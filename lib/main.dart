import 'package:baseapparelcomingsoonmaster/lf_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

void main() {
  debugPaintLayerBordersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'lfdel24@gmail.com base-apparel-coming-soon-master',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _SectionOne(),
          _HeroDesktop(),
        ],
      ),
    );
  }
}

class _SectionOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: LFColor.colorWhite,
        child: Placeholder(),
      ),
    );
  }
}

class _HeroDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      '/images/hero-desktop.jpg',
      fit: BoxFit.cover,
    ));
  }
}
