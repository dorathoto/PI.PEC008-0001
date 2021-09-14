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
                  'Somos um grupo de estudantes de Lorem ipsum.\nNa faculdade Nam malesuada.\n\nfacilisis dolor at tincidunt. Donec et ullamcorper risus, vel condimentum nisi. In posuere dolor vel consequat fringilla. Vivamus tristique consectetur efficitur. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque et rhoncus elit. Aliquam ac condimentum nulla, ac tristique nisi. Nulla rhoncus porta neque id ultricies. Nullam laoreet purus sit amet mattis ornare. Nam magna sem, vulputate vitae mattis vitae, lacinia eget lacus. Etiam diam neque, maximus in interdum non, hendrerit sed diam. Proin tincidunt nisi suscipit, laoreet enim ac, aliquam nisl. Sed sed laoreet felis. Aenean efficitur porttitor odio, eget elementum libero porttitor eu. Mauris leo ante, sollicitudin et ultricies a, viverra vitae massa.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.ubuntu(fontSize: 14, color: Colors.white)),
            ],
          )));
}
