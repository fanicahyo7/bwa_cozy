import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard(this.space);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
          child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      space.imageUrl,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(28)),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon_star_solid.png',
                              width: 18,
                              height: 18,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: poppinsMedium.copyWith(
                                  color: whiteColor, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: poppinsMedium.copyWith(color: blackColor, fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(TextSpan(
                  text: '\$${space.price}',
                  style: poppinsMedium.copyWith(color: purpleColor, fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' / month',
                        style: poppinsMedium.copyWith(
                            color: greyColor, fontSize: 16))
                  ])),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: poppinsLight.copyWith(color: greyColor, fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
