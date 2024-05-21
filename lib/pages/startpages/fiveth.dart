import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/register/loginpage.dart';
import 'package:planets_app/pages/register/registerpage.dart';

import 'package:planets_app/pages/widgets/extensions.dart';

class Fivethnext extends StatelessWidget {
  const Fivethnext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login/fivth.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 41, top: 108),
              child: Text(
                'Let`s float in Universe',
                style: GoogleFonts.poppins(
                    height: 0.9,
                    fontSize: 53,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 41, right: 23, bottom: 93),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  10.height(),
                  Text(
                    "Unlock a universe of knowledge and adventure with your pass.",
                    style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  27.height(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 23),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Loginpage();
                          },
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log In',
                          style: GoogleFonts.poppins(
                              height: 0.9,
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        10.width(),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  27.height(),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return Registerpage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Create new account',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
