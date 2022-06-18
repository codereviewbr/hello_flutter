import 'package:flutter/material.dart';
import 'package:hello_flutter/initial_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Flutter",
      initialRoute: "/",
      routes: {
        "/": (context) => const InitialPage(),
      },
    );
  }
}
