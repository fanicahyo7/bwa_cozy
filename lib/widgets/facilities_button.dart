import 'package:flutter/material.dart';

import '../theme.dart';

class FacilitiesButton extends StatelessWidget {
  final String nama;
  final String imageURL;
  final int total;

  FacilitiesButton(this.nama, this.imageURL, this.total);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageURL,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: total.toString(),
            style: poppinsMedium.copyWith(color: purpleColor, fontSize: 14),
            children: [
              TextSpan(
                  text: ' $nama',
                  style: poppinsMedium.copyWith(color: greyColor, fontSize: 14))
            ])),
      ],
    );
  }
}
