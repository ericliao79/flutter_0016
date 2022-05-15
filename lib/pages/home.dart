import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  Home({super.key}) {
    print("Home constructor");
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home'),
    );
  }
}
