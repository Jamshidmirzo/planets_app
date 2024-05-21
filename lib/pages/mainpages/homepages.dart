import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';

// ignore: must_be_immutable
class Homepages extends StatelessWidget {
  String name;
  Homepages({required this.name});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topitem(
                  maintext: 'Welcome ${name}',
                  secondtext: 'Space Voyager!',
                  haveornot: false),
              30.height(),
              // Container(
              //   width: double.infinity,
              //   height: 60,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.grey.shade600),
              //   padding: EdgeInsets.all(18),
              //   child: Row(
              //     children: [
              //       Text(
              //         'Search your favorite place...',
              //         style: GoogleFonts.poppins(
              //             color: Colors.white, fontWeight: FontWeight.w500),
              //       ),
              //       const Spacer(),
              //       const Icon(
              //         Icons.search,
              //         color: Colors.white,
              //         weight: 22,
              //       ),
              //     ],
              //   ),
              // ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Search your favorite place...',
                      style: TextStyle(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Colors.grey.shade900),
              ),
              30.height(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top picks',
                        style: GoogleFonts.poppins(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Let's explore our programes",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              30.height(),
              Toppicksitem(
                  id: 0,
                  firsttext: 'Adventurer',
                  boldtext: 'VR',
                  justtext: ' Shows'),
              Toppicksitem(
                  id: 1,
                  firsttext: 'Insightful',
                  boldtext: 'Q&A',
                  justtext: ' Polls'),
              Toppicksitem(
                  id: 2,
                  firsttext: 'Cheering',
                  boldtext: 'Leaderboard',
                  justtext: ''),
            ],
          ),
        ),
      ),
    );
  }
}
