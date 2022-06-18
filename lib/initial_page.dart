import 'package:flutter/material.dart';
import 'package:hello_flutter/random_words.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
        centerTitle: true,
      ),
      body: const Center(
        child: RandomWords(),
      ),
    );
  }
}
