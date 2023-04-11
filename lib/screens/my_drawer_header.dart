import 'package:flutter/material.dart';
import 'package:toumai_dary/config/config.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Config.colors.primaryColor,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
          Text("  Toumaï Dary  ", style: TextStyle(color: Config.colors.whiteColor, fontSize: 25, fontFamily: "Eczar",),),
          Text("info@toumaïdary.com", style: TextStyle(color: Colors.grey[200], fontSize: 12, fontFamily: "Questrial"),),
        ],
      ),
    );
  }
}
