import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/mainpages/viewvr.dart';
import 'package:planets_app/pages/widgets/extensions.dart';

// ignore: must_be_immutable
class Planetsinfo extends StatefulWidget {
  String title;
  String title2;
  String info1;
  String info2;
  String image;
  int id;
  Planetsinfo(
      {required this.title,
      required this.title2,
      required this.info1,
      required this.info2,
      required this.image,
      required this.id});

  @override
  State<Planetsinfo> createState() => _PlanetsinfoState();
}

class _PlanetsinfoState extends State<Planetsinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(widget.title,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFECECEC),
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                      Text(
                        widget.title2,
                        style: GoogleFonts.poppins(
                            color: const Color(0xFFECECEC),
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(color: Colors.black, boxShadow: [
                BoxShadow(color: Colors.black, offset: Offset(110, 100))
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.info1,
                    style: GoogleFonts.poppins(
                        color: const Color(0xFFECECEC),
                        fontWeight: FontWeight.w600,
                        fontSize: 23),
                  ),
                  10.height(),
                  Text(
                    widget.info2,
                    style: GoogleFonts.poppins(
                        color: const Color(0xFFECECEC),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Viewvr(widget.id);
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View in VR',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 21),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/vrpageimage/vr1.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
