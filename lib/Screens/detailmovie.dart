import 'package:flutter/material.dart';

class Detailmovie extends StatelessWidget {
  const Detailmovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image.asset(
                'assets/images/photomovie.png',
                fit: BoxFit.cover,
                height: 222,
                width: 393,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1, left: 10),
              child: Text(
                'Anweshippin Kandethum',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1, left: 8),
              child: Row(
                children: [
                  Text(
                    '2024 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                  Image.asset('assets/icons/ratingIcon.png'),
                  Text(
                    ' 2h 22m ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                  Image.asset('assets/icons/hdIcon.png'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Text(
                'Wrongfully suspended while pursuing the culprit in a missing persons case, a cop seeks redemption - and justice - when he gets a new assignment.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight(400),

                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, bottom: 2),
              child: Text(
                'Cast: Tovino Thomas, Siddique, Vineeth Thattil David... more',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  fontSize: 11,
                  fontWeight: FontWeight(400),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Creator: Darwin Kuriakose',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  fontSize: 11,
                  fontWeight: FontWeight(400),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Colors.white, size: 35),
                      ),
                      Text('My List', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Text('Rate', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send, color: Colors.white, size: 35),
                        ),
                        Text('Share', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 30,
                width: 110,
                child: Divider(color: Colors.red, thickness: 4),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                ' More Like This',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical, // الحركة فوق وتحت
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // الحركة يمين وشمال
                child: Column(
                  children: List.generate(20, (rowIndex) {
                    return Row(
                      children: List.generate(10, (colIndex) {
                        return Container(
                          width: 110, // عرض ثابت لكل عنصر
                          height: 158, // طول ثابت لكل عنصر
                          margin: EdgeInsets.all(2),
                          color: Colors.transparent,
                          child: Center(
                            child: Image.asset(
                              "assets/images/movie.png",
                              // width: 110,
                              // height: 158,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
