import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_ai/pages/bill_page.dart';
import 'package:home_ai/pages/profile_page.dart';
import 'package:home_ai/util/usage_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List features = [
  {
    'title': 'Plumming',
    'subtitle': 'This is a todo',
    'icon': Icons.check_box,
  },
  {
    'title': 'Electrical',
    'subtitle': 'This is a note',
    'icon': Icons.note,
  },
  {
    'title': 'Gas',
    'subtitle': 'This is a reminder',
    'icon': Icons.alarm,
  },
];

List graphs = [
  {
    'title': 'Water',
    'icon': Icons.check_box,
  },
  {
    'title': 'Electricity',
    'subtitle': 'This is a note',
    'icon': Icons.note,
  },
  {
    'title': 'Gas',
    'subtitle': 'This is a reminder',
    'icon': Icons.alarm,
  },
];

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if(index == 0) {
      // navigate to Profile page
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );

    } else if(index == 1) {
      // navigate to Profile page
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const Profile(),
        ),
      );

    } else if(index == 2) {
      // navigate to the Billing page
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const Billing(),
        ),
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(Icons.person, color: Colors.grey[800],),
          )
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black87, Colors.black]),
          ),
        child: 
          
          ListView(
            children: [Column(
              children: [
                // opening message
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: 
                                Text(
                                  'Welcome Back!', 
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                            ),
                            // Align(
                            //     alignment: Alignment.bottomRight,
                            //     child: Image.asset('../../images/house2.png'),
                            // ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '1406 University City Blvd', 
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.search, color: Colors.white70,),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: Text(
                                            'What can I do for you?', 
                                            style: GoogleFonts.josefinSans(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // horizonatal crolling slit with squre rounded frey widgets
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container(
                                  height: 70,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: features.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Container(
                                          width: 110,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[800],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(features[index]['icon'], color: Colors.white70,),
                                              Text(
                                                features[index]['title'], 
                                                style: GoogleFonts.josefinSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white70,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              // grey[800] rectagular widget with rounded conrners that has a line graph inside of it and has a point with the final value of the graph
                              
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 220,
                                    enlargeFactor: .2,
                                    enlargeCenterPage: true,
                                    onPageChanged: (position,reason){
                                      print(reason);
                                      print(CarouselPageChangedReason.controller);
                                    },
                                    enableInfiniteScroll: false,
                                  ),
                                  items: [
                                    UsageTile(
                                      title: 'Water',
                                      // color: Colors.blue[400],
                                    ),
                                    UsageTile(
                                      title: 'Electrisity',
                                      // color: Colors.blue[400],
                                    ), 
                                    UsageTile(
                                      title: 'Gas',
                                      // color: Colors.blue[400],
                                    ), 
                                ],
                              
                              ),
  )  
                            ]
                          ),
                        ),
                        
                      ],
                      ),
                    ),
                  ],
                ),
              
          
              ],
          
          
          
          
            ),
            ]
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.amberAccent,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
    );
  }
}