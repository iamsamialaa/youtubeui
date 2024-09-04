import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  final String videotime;
  final String videohead;
  final String chanelname;
  final String veiws;
  final String durationNum;

  const Feed({
    super.key,
    required this.videotime,
    required this.videohead,
    required this.chanelname,
    required this.veiws,
    required this.durationNum,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              color: Colors.grey,
              height: 250,
            ),
            Container(
                height: 30,
                width: 50,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    videotime,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      videohead,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            chanelname,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            ' - ',
                          ),
                          Text(
                            veiws,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Text(
                            ' - ',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            durationNum,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        )
      ],
    );
  }
}
