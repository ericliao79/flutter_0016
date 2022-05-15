import 'package:flutter/material.dart';

class School extends StatelessWidget {

  School({super.key}) {
    print("School constructor");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('School'),
    );
  }
}
