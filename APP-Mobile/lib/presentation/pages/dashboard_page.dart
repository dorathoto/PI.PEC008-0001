import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../controller/dashboard_controller.dart';
import 'institutional_page.dart';

class DashboardPage extends StatefulWidget {
  static const String route = '/Dashboard';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DashboardController _controller = DashboardController();

  void message(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black38,
        textColor: Colors.white,
        fontSize: 16);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.amber.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await _controller.sendLatLng();
          if (result) {
            message('Gravado com sucesso');
          } else {
            message('Erro ao gravar');
          }
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, size: 36, color: Color(0xff130d55)),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 100),
          Text('LAT/LNG Send',
              style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 100),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(InstitutionalPage.route),
                      child: Text('Quem somos',
                          style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)))))
        ],
      )));
}
