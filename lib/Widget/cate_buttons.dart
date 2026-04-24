import 'package:flutter/material.dart';

class Catebuttons extends StatelessWidget {
  const Catebuttons({super.key, required this.cateName});
  final String cateName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('Categore');
      },
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              cateName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight(500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
