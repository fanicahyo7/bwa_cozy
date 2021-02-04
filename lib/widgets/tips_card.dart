import 'package:bwa_cozy/models/tips.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: jarak),
      child: Row(children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
          height: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: poppinsMedium.copyWith(fontSize: 18, color: blackColor),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              tips.updatedAt,
              style: poppinsLight.copyWith(color: greyColor),
            ),
          ],
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.chevron_right,
              size: 24,
            ),
            onPressed: () {})
      ]),
    );
  }
}
