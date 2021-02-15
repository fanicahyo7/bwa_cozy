import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({this.index, this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      child: Image.asset(
        (index <= rating)
            ? 'assets/Icon_star_solid.png'
            : 'assets/Icon_star_solid_grey.png',
        width: 20,
      ),
    );
  }
}
