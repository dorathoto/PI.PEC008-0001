import 'package:flutter/material.dart';

import 'app/poc_router.dart';
import 'presentation/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'COI POC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: IntroPage(),
        onGenerateRoute: PocRouter.generateRoute,
      );
}
