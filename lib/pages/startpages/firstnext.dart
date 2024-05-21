import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/register/loginpage.dart';
import 'package:planets_app/pages/startpages/secondnext.dart';
import 'package:planets_app/pages/widgets/extensions.dart';

class Firstabout extends StatelessWidget {
  const Firstabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(-0.4, 0),
            image: AssetImage('assets/images/login/second.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 23, left: 270, top: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.7)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return Loginpage();
                      },
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 41,
              ),
              child: Text(
                'Insights',
                style: GoogleFonts.poppins(
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
                "Embark on an interstellar voyage like  never before. Explore distant galaxies,  uncover cosmic secrets, and witness the majesty of the universe. Your cosmic  adventure begins here.",
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Secondabout();
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
