import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String text1;
  final String text2;

  DateContainer({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      height: 67,
      width: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Color(0xff303030),
              fontFamily: "Noto Sans JP",
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Color(0xff303030),
              fontFamily: "Noto Sans JP",
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}



