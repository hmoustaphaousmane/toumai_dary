import 'package:flutter/material.dart';
import 'package:toumai_dary/screens/body.dart';

import '../config/config.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
