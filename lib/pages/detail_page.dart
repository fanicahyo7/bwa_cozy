import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facilities_button.dart';
import 'package:bwa_cozy/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';
import 'error_page.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  DetailPage(this.space);
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.network(
            space.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor),
                child: Column(
                  // NOTE : HEADER
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: jarak),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                space.name,
                                style: poppinsMedium.copyWith(
                                    color: blackColor, fontSize: 22),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(TextSpan(
                                  text: '\$${space.price}',
                                  style: poppinsMedium.copyWith(
                                      color: purpleColor, fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' / month',
                                        style: poppinsMedium.copyWith(
                                            color: greyColor, fontSize: 16))
                                  ])),
                            ],
                          ),
                          Row(
                            children: [1, 2, 3, 4, 5].map((e) {
                              return RatingItem(
                                index: e,
                                rating: space.rating,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE : FACILITIES
                    Container(
                      padding: EdgeInsets.only(left: jarak),
                      margin: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Main Facilities',
                        style: TextStyle(color: blackColor, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: jarak),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilitiesButton('kitchen', 'assets/icon-kitchen.png',
                              space.numberKitchen),
                          FacilitiesButton('bedroom', 'assets/icon-bed.png',
                              space.numberBedroom),
                          FacilitiesButton('Big lemari',
                              'assets/icon-lemari.png', space.numberCupboard),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE : Photos
                    Container(
                      padding: EdgeInsets.only(left: jarak),
                      margin: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Photos',
                        style: TextStyle(color: blackColor, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 88,
                      child: ListView(
                          padding: EdgeInsets.only(left: jarak),
                          scrollDirection: Axis.horizontal,
                          children: space.photos
                              .map((e) => Container(
                                    margin: EdgeInsets.only(right: 18),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(18)),
                                      child: Image.network(
                                        e,
                                        width: 110,
                                        height: 88,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))
                              .toList()),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE : LOCATION
                    Container(
                      padding: EdgeInsets.only(left: jarak),
                      margin: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Location',
                        style: TextStyle(color: blackColor, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: jarak),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${space.address}\n${space.city}',
                            style: TextStyle(color: greyColor),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl(space.mapUrl);
                            },
                            child: Image.asset(
                              'assets/btn_map.png',
                              width: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(space.phone);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: jarak),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17))),
                          onPressed: () {},
                          child: Text(
                            'Book Now',
                            style: poppinsMedium.copyWith(
                                fontSize: 18, color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(jarak, 30, jarak, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/btn_wishlist.png',
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
