import 'package:flutter/material.dart';
import 'add_video.dart';
import 'home.dart';
import 'profile.dart';
import 'shorts.dart';
import 'subscriptions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate
  int _selectedindex = 0;

  void _naviageBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  // pages
  final List _pages = [
    const Home(),
    const Shorts(),
    const AddVideo(),
    const Subscriptions(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.video_collection,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'YouTube',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.screenshot_monitor_sharp,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.notifications_none,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _naviageBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
              ),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call_outlined,
                size: 40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
              ),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_outlined,
              ),
              label: 'You',
            ),
          ]),
    );
  }
}
