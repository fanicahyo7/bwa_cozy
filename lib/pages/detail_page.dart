import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facilities_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
