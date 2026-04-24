import 'package:flutter/material.dart';
import 'package:netfilix/Screens/detailmovie.dart';
import 'package:netfilix/Widget/cate_buttons.dart';
import 'package:netfilix/Widget/now_watching_widget.dart';
import 'package:netfilix/Widget/popular_widget.dart';
import 'package:netfilix/Widget/top_rated_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(57, 16, 30, 1), // Deep Blue
                Color.fromRGBO(8, 2, 4, 1), // Lighter Blue
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      Text(
                        'For Saurabh Saini',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Spacer(flex: 1),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/icons/shareIcon.png',
                          width: 22,
                          height: 18,
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/icons/downloadIcon.png',
                          width: 22,
                          height: 18,
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Catebuttons(cateName: 'TV Shows'),
                    Catebuttons(cateName: 'Movies'),
                    Catebuttons(cateName: 'Comedy Show'),
                    // Catebuttons(cateName: 'Action'),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Detailmovie()),
                    );
                  },
                  child: NowWatchingWidget(),
                ),

                PopularWidget(),
                TopRatedWidget(),
                PopularWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
