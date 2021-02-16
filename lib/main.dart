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
  final TextStyle textStyle1 =
      TextStyle(fontSize: 70, letterSpacing: 16, color: LFColor.colorPink);
  final TextStyle textStyle2 = TextStyle(
      letterSpacing: 16,
      fontSize: 70,
      color: LFColor.colorBlack,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 75, left: 150),
        color: LFColor.colorWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 158,
              height: 33,
              child: WebsafeSvg.asset(
                '/images/logo.svg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 150),
            Text("WE'RE", style: textStyle1),
            Text("COMING", style: textStyle2),
            Text("SONG", style: textStyle2),
          ],
        ),
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
