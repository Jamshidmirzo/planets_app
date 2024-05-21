import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/mainpages/planetsinfo.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Vrplanets extends StatefulWidget {
  const Vrplanets({super.key});

  @override
  State<Vrplanets> createState() => _VrplanetsState();
}

class _VrplanetsState extends State<Vrplanets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/allphoto/backgroundmain.png'),
                fit: BoxFit.fitHeight),
          ),
          child: Container(
            color: Colors.black54,
            padding: EdgeInsets.only(right: 20, left: 20, top: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Adventurer',
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFECECEC),
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                        Text(
                          'VR Planets',
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFECECEC),
                              fontWeight: FontWeight.bold,
                              fontSize: 33),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const ZoomTapAnimation(
                      child:  Icon(
                        Icons.search_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                20.height(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Planetsinfo(
                                id: 1,
                                title: 'Our Home',
                                title2: 'Earth',
                                info1: 'Planetary data for Earth',
                                info2:
                                    'Planet Earth is the third planet from the Sun in our solar system. It is a unique and diverse world, home to a wide variety of life, including humans. Earth has a rich atmosphere that sustains life, vast oceans covering much of its surface, and a diverse range of ecosystems, making it a remarkable and beautiful planet.',
                                image: 'assets/images/planets/earth.png');
                          },
                        ),
                      );
                    },
                    child: Vrplanetitem(
                        id: 0, firsttext: 'Our Home', boldtext: 'Earth')),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Planetsinfo(
                                id: 2,
                                title: 'Red Land',
                                title2: 'Mars',
                                info1: 'Planetary data for Earth',
                                info2:
                                    "Mars, often called the 'Red Planet,' is the fourth planet from the Sun in our solar system. It's a world of stark, otherworldly beauty, characterized by its rust-colored surface. Mars has fascinated astronomers and space enthusiasts for generations. It's a planet with a thin atmosphere, a history of possible liquid water, and it's a prime target for future exploration, including the search for signs of past or present life.",
                                image: 'assets/images/planets/mars.png');
                          },
                        ),
                      );
                    },
                    child: Vrplanetitem(
                        id: 1, firsttext: 'Red Land', boldtext: 'Mars')),
                Vrplanetitem(
                    id: 2, firsttext: 'Beatiful Planet', boldtext: 'Saturn'),
                Vrplanetitem(
                    id: 3, firsttext: 'Giant Planet', boldtext: 'Jupiter'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
