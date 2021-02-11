import 'package:flutter/material.dart';

import '../theme.dart';
import 'home_page.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/404.png',
              width: 300,
              height: 85.95,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going?',
              style: poppinsMedium.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: poppinsLight.copyWith(fontSize: 16, color: greyColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 210,
              child: RaisedButton(
                color: purpleColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                child: Text(
                  'Back to Home',
                  style:
                      poppinsMedium.copyWith(fontSize: 18, color: whiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
