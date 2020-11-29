import 'package:flutter/material.dart';
import 'package:nubank_card/pages/card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardPage(),
    );
  }
}