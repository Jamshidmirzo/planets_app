import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/startpages/firstnext.dart';
import 'package:planets_app/pages/widgets/extensions.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 90),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login/first.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Virtual',
              style: GoogleFonts.poppins(
                  height: 1,
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Galaxy Explorer',
              style: GoogleFonts.poppins(
                  height: 0.9,
                  fontSize: 77,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
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
                        return Firstabout();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start Learninig',
                      style: GoogleFonts.poppins(
                          height: 0.9,
                          fontSize: 21,
                          fontWeight: FontWeight.w500),
                    ),
                    10.width(),
                    const Icon(Icons.arrow_forward)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
