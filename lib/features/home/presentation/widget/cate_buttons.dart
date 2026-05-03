import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Catebuttons extends StatelessWidget {
  Catebuttons({super.key, required this.cateName});
  List<String> cateName = [];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('Categore');
      },
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      cateName[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
