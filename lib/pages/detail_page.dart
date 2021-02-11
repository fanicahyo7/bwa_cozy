import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facilities_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';
import 'error_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/detail.png',
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
                                'Kuretakeso Hott',
                                style: poppinsMedium.copyWith(
                                    color: blackColor, fontSize: 22),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(TextSpan(
                                  text: '\$52',
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
                            children: [
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                                color: greyColor,
                              ),
                            ],
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
                          FacilitiesButton(
                              'kitchen', 'assets/icon-kitchen.png', 2),
                          FacilitiesButton('bedroom', 'assets/icon-bed.png', 3),
                          FacilitiesButton(
                              'Big lemari', 'assets/icon-lemari.png', 3),
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
                        padding: EdgeInsets.symmetric(horizontal: jarak),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            child: Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            child: Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            child: Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            child: Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
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
                            'Jln. Kappan Sukses No. 20\nPalembang',
                            style: TextStyle(color: greyColor),
                          ),
                          InkWell(
                            onTap: () {
                              // launchUrl('https://g.page/Alunalunbatu?share');
                              launchUrl('qwregrh');
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
                        launchUrl('tel:+6282334349494');
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
