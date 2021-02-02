import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: jarak, left: jarak),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore Now',
                  style:
                      poppinsMedium.copyWith(fontSize: 24, color: blackColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Mencari kosan yang cozy',
                  style: poppinsLight.copyWith(color: greyColor, fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: jarak),
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              'Popular Cities',
              style: TextStyle(color: blackColor, fontSize: 16),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                CityCard(
                  City(
                    id: 1,
                    nama: 'Jakarta',
                    urlImage: 'assets/city1.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 2,
                    nama: 'Bandung',
                    urlImage: 'assets/city2.png',
                    isFavo: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 3,
                    nama: 'Surabaya',
                    urlImage: 'assets/city3.png',
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
