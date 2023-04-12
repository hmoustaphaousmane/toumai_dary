import 'package:flutter/material.dart';

import '../config/config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
