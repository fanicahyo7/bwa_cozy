import 'package:flutter/material.dart';

import '../theme.dart';

class CityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: cardColor,
        child: Column(
          children: [
            Image.asset(
              'assets/city1.png',
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              'Jakarta',
              style: poppinsMedium.copyWith(color: blackColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
