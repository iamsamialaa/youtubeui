import 'package:flutter/material.dart';
import '../Utils/feed.dart';
import '../Utils/header_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderBar(),
          Expanded(
            child: ListView(
              children: const [
                Feed(
                  videotime: '2:00',
                  videohead: 'مرحبا بكم في اليوتيوب باللغة العربية',
                  chanelname: 'YouTube',
                  veiws: '100M views',
                  durationNum: '2 Months Ago',
                ),
                Feed(
                  videotime: '20:00',
                  videohead: 'Ronaldo and Messi',
                  chanelname: 'FiFa',
                  veiws: '50M views',
                  durationNum: '2 Weeks Ago',
                ),
                Feed(
                  videotime: '5:00',
                  videohead: 'مرحبا بكم في قناتي',
                  chanelname: 'NinJa',
                  veiws: '100k views',
                  durationNum: '6 Months Ago',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
