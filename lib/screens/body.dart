import 'package:flutter/material.dart';
import 'package:toumai_dary/config/config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height* 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 46 + kDefaultPadding,
                ),
                height: size.height*0.2 - 27,
                decoration: BoxDecoration(
                    color: Config.colors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Toumaï Dary',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Config.colors.whiteColor,fontFamily: "Eczar", fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                    color: Config.colors.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Config.colors.primaryColor.withOpacity(0.23),
                        )
                      ],
                ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Config.colors.primaryTextColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
