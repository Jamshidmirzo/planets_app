import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/mainpages/vrplanets.dart';

import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';

class Vrpage extends StatefulWidget {
  const Vrpage({super.key});

  @override
  State<Vrpage> createState() => _VrpageState();
}

class _VrpageState extends State<Vrpage> {
  bool removecontainer = true;

  candeletecontainer() {
    return Container(
      width: double.infinity,
      height: 275,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36), color: Colors.grey.shade900),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/vrpageimage/vr.png'))),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  removecontainer = !removecontainer;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.highlight_remove,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          9.height(),
          Text(
            'What you get here?',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
          ),
          Text(
            "You'll step into the realms of galaxies, planets, satellites, and stars. Get ready to be captivated by the wonders of the universe in stunning virtual reality",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }

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
                Topitem(
                    maintext: "Let`s dive in",
                    secondtext: 'VR Shows',
                    haveornot: true),
                10.height(),
                removecontainer ? candeletecontainer() : 1.height(),
                27.height(),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const Vrplanets();
                    }));
                  },
                  child: Showplanetitem(
                      id: 0,
                      firsttext: 'Adventure',
                      justtext: 'Planets',
                      date: '9'),
                ),
                Showplanetitem(
                    id: 1,
                    firsttext: 'Discover',
                    justtext: 'Galaxies',
                    date: '4'),
                Showplanetitem(
                    id: 2,
                    firsttext: 'Pathfinder',
                    justtext: 'Stars',
                    date: '7'),
                Showplanetitem(
                    id: 3,
                    firsttext: 'Pioneero',
                    justtext: 'Satellites',
                    date: '5'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
