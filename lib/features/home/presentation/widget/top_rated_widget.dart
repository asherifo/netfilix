import 'package:flutter/material.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 10),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Top Rated',
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
                      print('Go To Top Rated Movie');
                    },
                    child: Image.asset('assets/images/movie.png'),
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
