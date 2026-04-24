import 'package:flutter/material.dart';
import 'package:netfilix/Screens/detailmovie.dart';

class NowWatchingWidget extends StatelessWidget {
  const NowWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 10),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Now Watching',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          SizedBox(
            height: 158,

            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // ignore: avoid_print
                      print('Now Watching Movie');
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(builder: (context) => Detailmovie()),
                      // );
                    },
                    child: InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print('Go To NOW Watching Movie');
                      },
                      child: Image.asset(
                        'assets/images/movie.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
