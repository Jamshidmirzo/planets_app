import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/startpages/fourtnext.dart';

import 'package:planets_app/pages/widgets/extensions.dart';

class Thirdnext extends StatelessWidget {
  const Thirdnext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login/eights.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 41, top: 108),
              child: Text(
                'Learn about Starts',
                style: GoogleFonts.poppins(
                    height: 0.9,
                    fontSize: 53,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 41,
                right: 23,
              ),
              child: Text(
                "Stellar Discoveries: Embark on an illuminating voyage to uncover the secrets of stars. From the blazing birth of stars to the enchanting constellations that adorn our night sky",
                style: GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            35.height(),
            Padding(
              padding: const EdgeInsets.only(right: 56, bottom: 82),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle),
                  ),
                  31.width(),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle),
                  ),
                  31.width(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Fourtnext();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_right_alt,
                        size: 40,
                      ),
                    ),
                  ),
                  31.width(),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle),
                  ),
                  31.width(),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
