import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard_page.dart';

class IntroPage extends StatefulWidget {
  static const String route = '/Intro';

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    _rotationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _rotationController.repeat();

    Timer.periodic(const Duration(seconds: 5), (Timer t) {
      _rotationController.dispose();
      t.cancel();
      Navigator.pushReplacementNamed(context, DashboardPage.route);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.amber.shade900,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 1, child: SizedBox(height: 1)),
            Expanded(
                flex: 10,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset('assets/images/logo.png',
                                width: 400)),
                        SizedBox(height: 50),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RotationTransition(
                                turns: Tween(begin: 0.0, end: 1.0)
                                    .animate(_rotationController),
                                child: const Icon(FontAwesomeIcons.sync,
                                    color: Colors.white, size: 22)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('AGUARDE, CARREGANDO...',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                      ],
                    ))

                // Text('oi')),
                ),
          ],
        ),
      );
}
