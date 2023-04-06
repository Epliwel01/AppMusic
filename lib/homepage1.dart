import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget musicbox1(String img, String title1) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              height: 88,
              width: 88,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title1,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      );
    }

    Widget musicbox2(String img2, String title2, String Desc) {
      return Container(
        height: 240,
        width: 141,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 141,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img2))),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title2,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    Desc,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xff6c7072),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget musicbox3(String img3, String title3, String Desc) {
      return Container(
        height: 250,
        width: 141,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 141,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img3))),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title3,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    Desc,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xff6c7072),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, \nWahyurf',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img-avatar.png"))),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    musicbox1("assets/images/img-music11.png", "Chill Hits"),
                    musicbox1("assets/images/img-music12.png", "Top Hits"),
                    musicbox1("assets/images/img-music13.png", "Happy Hits"),
                    musicbox1("assets/images/img-music14.png", "Good Time"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Just for you",
                style: TextStyle(
                  color: Color(0xff090a0a),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    musicbox2("assets/images/img-music21.png", "Daily Mix",
                        "Jonas Blue, NOTD, David Guetta and more"),
                    musicbox2("assets/images/img-music22.png", "Feelin' Myself",
                        "Ariana Grande, Doja Cat, Megan Thee Stallion..."),
                    musicbox2("assets/images/img-music23.png", "Mood Booster",
                        "BTS, Dua Lipa, Malone, Justin Bieber and more"),
                  ],
                ),
              ),
              Text(
                "Popular Songs",
                style: TextStyle(
                  color: Color(0xff090a0a),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    musicbox3("assets/images/img-music31.png", "Good Vibes",
                        "Tame Impala, Joji, Tyler, The Creator, 5 Second"),
                    musicbox3("assets/images/img-music32.png", "Mega Hit Mix",
                        "Ariana Grande, BTS, Dua Lipa, Justin Bieber, Taylo"),
                    musicbox3("assets/images/img-music33.png", "Young & Free",
                        "LANY, Jeremy Zucker, Joji, ILLENIUM, Glass A..."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
