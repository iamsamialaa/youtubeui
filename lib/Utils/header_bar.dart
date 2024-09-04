import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            width: 50,
            child: const Icon(
              Icons.navigation,
              size: 20,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: const Text(
                'All',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('Gaming')),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('Music')),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('FootBall')),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('Egypt')),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('BasketBall')),
        ],
      ),
    );
  }
}
