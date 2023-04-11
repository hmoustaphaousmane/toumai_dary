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
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Config.colors.primaryColor,
title: Text("Toumaï Dary", style: TextStyle(color: Config.colors.whiteColor, fontFamily: "Eczar"),),
)
    );
  }
}

