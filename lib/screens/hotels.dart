import 'package:flutter/material.dart';
import 'package:toumai_dary/widgets/travelcard.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Hotels(),
//   ));
// }

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  // image urls
  // List<Image> urls = [
  //   Image.asset('hilton-n-djamena-toumai-palace.jpg'),
  //   Image.asset('ledger.jpg'),
  //   Image.asset('radisson'),
  //   Image.asset('hilton-n-djamena-toumai-palace.jpg'),
  //   Image.asset('ledger.jpg'),
  //   Image.asset('radisson'),
  // ];

  List<String> urls = [
    'https://media-cdn.tripadvisor.com/media/photo-s/23/34/ba/60/exterior.jpg',
    'data:image/jpeg;base64,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',
    'https://pix10.agoda.net/hotelImages/127/1270986/1270986_16072815260045028080.jpg?ca=6&ce=1&s=1024x768',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyTNGi0Eb0BAzZ5QBg1pQ9IdZGDjb7q9z5SfwxT6PpX_hKe1cTSejrOyXhNO_uBthlKww&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome home',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Pick your favorite hotel',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: const Color(0x55434343),
              child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search for Hotel...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(
              height: 30.0,
            ),
            // Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                  child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Color(0xFFFE8C68),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color(0xFFFE8C68),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    tabs: [
                      Tab(
                        text: 'Trending',
                      ),
                      Tab(
                        text: 'Promotions',
                      ),
                      Tab(
                        text: 'Favorites',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 300.0,
                    child: TabBarView(
                      children: [
                        // Tab page
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                  urls[0], 'Radisson Blus', 'N\'Djamena', 3),
                              travelCard(
                                  urls[1], 'Radisson Blue', 'N\'Djamena', 4),
                              travelCard(
                                  urls[2], 'Ledger Plaza', 'N\'Djamena', 4),
                              travelCard(
                                  urls[3], 'Toumai Palace', 'N\'Djamena', 5),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: const Color(0x0ffb7b7b),
      //   selectedItemColor: const Color(0xFFFE8C68),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home,),
      //       tooltip: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark,),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.location_on,),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications,),
      //     ),
      //   ],
      //   ),
    );
  }
}
