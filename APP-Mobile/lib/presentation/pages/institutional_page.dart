import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../controller/dashboard_controller.dart';

class InstitutionalPage extends StatefulWidget {
  static const String route = '/Institutional';

  @override
  _InstitutionalPageState createState() => _InstitutionalPageState();
}

class _InstitutionalPageState extends State<InstitutionalPage> {
  final DashboardController _controller = DashboardController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff130d55),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(FontAwesomeIcons.arrowLeft,
                color: Colors.white, size: 22)),
      ),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Quem somos',
                  style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              Text(
                  'Somos um grupo de estudantes desenvolvendo o projeto PI.\nUnivesp\n\n\n-ARAMIS GARCIA PIRES RA: 1716270\n-DENISE YUKI CAPASSO	RA: 1702534\n-FERNANDO ZAMBO  RA: 1709980\n-HENRIQUE PEREIRA CAMACHO	RA: 1714211\n-LEONARDO STOROLLI DORATHOTO	RA: 1705323\n-WANDERSON JOSÉ REZENDE RA: 1714060',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.ubuntu(fontSize: 14, color: Colors.white)),
            ],
          )));
}
