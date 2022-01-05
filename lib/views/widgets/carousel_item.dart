import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:portfolio/models/carousel_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';

List<CarouselItemModel> carouselItems = List.generate(
  1,
  (index) => CarouselItemModel(
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Front-end Developer",
          style: GoogleFonts.oswald(
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Text(
          "Ananth Kumar \nMaharajan",
          textAlign: TextAlign.left,
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            height: 1.3,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        const Text(
          "Flutter developer, based in Chennai",
          style: TextStyle(
            color: kCaptionColor,
            fontSize: 15.0,
            height: 1.0,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Wrap(
          children: [
            const Text(
              "Need an app or a website?",
              style: TextStyle(
                color: kCaptionColor,
                fontSize: 15.0,
                height: 1.5,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  " Got a project? Let's talk.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    ),
    image: SizedBox(
      width: double.infinity,
      height: 600,
      child: ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.05,
            xRotation: 0.05,
            child: Center(
              child: Image.asset(
                'assets/stars.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ParallaxLayer(
            yRotation: 0.10,
            xOffset: 10,
            yOffset: 10,
            child: Center(
              child: Image.asset(
                'assets/profile.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);
