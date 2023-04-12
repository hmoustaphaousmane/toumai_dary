import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:toumai_dary/config/config.dart';
import 'package:toumai_dary/screens/contacts.dart';
import 'package:toumai_dary/screens/events.dart';
import 'package:toumai_dary/screens/home.dart';
import 'package:toumai_dary/screens/hotels.dart';
import 'package:toumai_dary/screens/meals.dart';
import 'package:toumai_dary/screens/sites.dart';

import 'screens/my_drawer_header.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Config.colors.primaryTextColor),
          fontFamily: "Questrial",
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Config.colors.primaryTextColor
      ),
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = Home();
    } else if (currentPage == DrawerSections.touristic_sites) {
      container = Touristic();
    } else if (currentPage == DrawerSections.hotels) {
      container = Hotels();
    } else if (currentPage == DrawerSections.good_meals) {
      container = Meals();
    } else if (currentPage == DrawerSections.events) {
      container = Events();
    } else if (currentPage == DrawerSections.contact_us) {
      container = Contacts();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Config.colors.primaryColor,
       ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
        //show the list of menu drawer
        children: [
          menuItem(1, "Home", Icons.home_outlined,
              currentPage == DrawerSections.home ? true : false),
          menuItem(2, "Touristic Sites", Icons.yard_outlined,
              currentPage == DrawerSections.touristic_sites ? true : false),
          menuItem(3, "Hotels", Icons.hotel_outlined,
              currentPage == DrawerSections.hotels ? true : false),
          menuItem(4, "Good meals", Icons.set_meal_outlined,
              currentPage == DrawerSections.good_meals ? true : false),
          menuItem(5, "Events", Icons.event_outlined,
              currentPage == DrawerSections.events ? true : false),
          menuItem(6, "Contact Us", Icons.people_alt_outlined,
              currentPage == DrawerSections.contact_us ? true : false),
        ],
      ),
    );
  }


  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState((){
            if (id == 1){
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.touristic_sites;
            } else if (id == 3) {
              currentPage = DrawerSections.hotels;
            } else if (id == 4){
              currentPage = DrawerSections.good_meals;
            } else if (id == 5) {
              currentPage = DrawerSections.events;
            } else if (id == 6) {
              currentPage = DrawerSections.contact_us;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,),
              ),
              Expanded(
                flex: 3,
                child: Text(title, style: TextStyle(color: Colors.black, fontSize: 16,),),),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  touristic_sites,
  hotels,
  good_meals,
  events,
  contact_us,
}
