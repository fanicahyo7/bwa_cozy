import 'package:bwa_cozy/models/city.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);
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
            Stack(
              children: [
                Image.asset(
                  city.urlImage,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                (city.isFavo == true)
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(28)),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.nama,
              style: poppinsMedium.copyWith(color: blackColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
