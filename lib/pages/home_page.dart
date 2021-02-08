import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_bar.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
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
          // NOTE : POPULAR
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
          ),
          SizedBox(
            height: 30,
          ),
          // NOTED : RECOMMENDED SPACE
          Container(
            padding: EdgeInsets.only(left: jarak),
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              'Recommended Space',
              style: TextStyle(color: blackColor, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: jarak),
            child: Column(
              children: [
                SpaceCard(Space(
                    id: 1,
                    name: 'Kuretakeso Hott',
                    rating: 4,
                    price: 52,
                    city: 'Bandung',
                    country: 'Germany',
                    imageUrl: 'assets/reko1.png')),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(Space(
                    id: 1,
                    name: 'Roemah Nenek',
                    rating: 5,
                    price: 11,
                    city: 'Seattle',
                    country: 'Bogor',
                    imageUrl: 'assets/reko2.png')),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(Space(
                    id: 1,
                    name: 'Darrling How',
                    rating: 3,
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    imageUrl: 'assets/reko3.png'))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //NOTE : TIPS
          Container(
            padding: EdgeInsets.only(left: jarak),
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              'Tips & Guidance',
              style: TextStyle(color: blackColor, fontSize: 16),
            ),
          ),
          Column(
            children: [
              TipsCard(Tips(
                  id: 1,
                  title: 'City Guidelines',
                  imageUrl: 'assets/icon.png',
                  updatedAt: 'Updated 20 Apr')),
              SizedBox(
                height: 20,
              ),
              TipsCard(Tips(
                  id: 2,
                  title: 'Jakarta Fairship',
                  imageUrl: 'assets/icon2.png',
                  updatedAt: 'Updated 11 Dec'))
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      )),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * jarak),
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: jarak),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBar(
              imageUrl: 'assets/Icon_home_active.png',
              isActive: true,
            ),
            BottomBar(
              imageUrl: 'assets/Icon_mail.png',
              isActive: false,
            ),
            BottomBar(
              imageUrl: 'assets/Icon_card.png',
              isActive: false,
            ),
            BottomBar(
              imageUrl: 'assets/Icon_love.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
