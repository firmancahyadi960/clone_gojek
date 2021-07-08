import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25,
          child: Image.asset('assets/images/logo.png'),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: false,
        actions: [
          Image.asset(
            'assets/images/diskon.png',
            scale: 3,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: ListView(
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/gopay.png',
                      scale: 2.5,
                    ),
                    Text(
                      'Rp. 37.000',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeaderItem(
                      images: 'assets/images/pay.png',
                      text: 'pay',
                    ),
                    HeaderItem(
                      images: 'assets/images/promo.png',
                      text: 'promo',
                    ),
                    HeaderItem(
                      images: 'assets/images/topup.png',
                      text: 'topup',
                    ),
                    HeaderItem(
                      images: 'assets/images/more.png',
                      text: 'more',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderItem(
                  images: 'assets/images/goride.png',
                  text: 'GoRide',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/gocar.png',
                  text: 'GoCar',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/gofood.png',
                  text: 'GoFood',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/gobluebird.png',
                  text: 'GoBlueBird',
                  textcolor: Colors.grey[600],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderItem(
                  images: 'assets/images/gosend.png',
                  text: 'GoSend',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/godeals.png',
                  text: 'GoDeals',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/gopulsa.png',
                  text: 'GoPulsa',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'assets/images/more-1.png',
                  text: 'More',
                  textcolor: Colors.grey[600],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/banner01.png',
                      scale: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/images/bannertopup.png',
                      scale: 3,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key key, this.images, this.text, this.textcolor})
      : super(key: key);
  final String images;
  final String text;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(height: 10),
          Text('$text',
              style: GoogleFonts.poppins(
                  color: textcolor ?? Colors.white,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
