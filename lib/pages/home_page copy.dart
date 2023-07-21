import 'package:flutter/material.dart';
import 'package:home_ai/pages/bill_page.dart';
import 'package:home_ai/pages/profile_page.dart';
import 'package:home_ai/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List features = [
  {
    'title': 'Todo',
    'subtitle': 'This is a todo',
    'icon': Icons.check_box,
  },
  {
    'title': 'Notes',
    'subtitle': 'This is a note',
    'icon': Icons.note,
  },
  {
    'title': 'Reminders',
    'subtitle': 'This is a reminder',
    'icon': Icons.alarm,
  },
  {
    'title': 'Calendar',
    'subtitle': 'This is a calendar',
    'icon': Icons.calendar_today,
  },
  {
    'title': 'Timer',
    'subtitle': 'This is a timer',
    'icon': Icons.timer,
  },
  {
    'title': 'Stopwatch',
    'subtitle': 'This is a stopwatch',
    'icon': Icons.timer,
  },
  {
    'title': 'Calculator',
    'subtitle': 'This is a calculator',
    'icon': Icons.calculate,
  },
  {
    'title': 'Weather',
    'subtitle': 'This is a weather',
    'icon': Icons.wb_sunny,
  },
  {
    'title': 'Settings',
    'subtitle': 'This is a settings',
    'icon': Icons.settings,
  },
  {
    'title': 'About',
    'subtitle': 'This is a about',
    'icon': Icons.info,
  },
  {
    'title': 'Logout',
    'subtitle': 'This is a logout',
    'icon': Icons.logout,
  }
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
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text('Home AI'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: GridView.builder(
        itemCount: features.length,
        itemBuilder: (context, index) {
          return TodoTile(
            title: features[index]['title'],
            subtitle: features[index]['subtitle'],
            icon: features[index]['icon'],
          );
        }, 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Billing'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
    );
  }
}