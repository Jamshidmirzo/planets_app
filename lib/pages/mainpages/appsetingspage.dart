import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/mainpages/quitpage.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class Appsetingspage extends StatefulWidget {
  String name;
  int id;

  Appsetingspage({required this.name, required this.id});

  @override
  State<Appsetingspage> createState() => _AppsetingspageState();
}

class _AppsetingspageState extends State<Appsetingspage> {
  List allphoto = [
    'assets/images/allphoto/person4.png',
    'assets/images/allphoto/person5.png',
    'assets/images/allphoto/person.png',
    'assets/images/allphoto/person1.png',
    'assets/images/allphoto/person2.png',
  ];

  containerwithinfo() {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade900,
      ),
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Text(
            'Edit Profile',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          10.height(),
          Stack(
            children: [
              Container(
                width: 115,
                height: 115,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300.withOpacity(0.1)),
                child: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300.withOpacity(0.3)),
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(allphoto[widget.id]),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                left: 60,
                child: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(Icons.edit_outlined)),
              )
            ],
          ),
          5.height(),
          Text(
            'Bryan Wolf',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                height: 0.5,
                color: Colors.white),
          ),
          const Text(
            '______',
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.name}@gmail.com',
                style: GoogleFonts.plusJakartaSans(
                    color: Colors.white, fontSize: 13),
              ),
            ],
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
          color: Colors.black,
          padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
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
                ],
              ),
              containerwithinfo(),
              20.height(),
              appsetingitems(text: 'App preferences', id: 0),
              appsetingitems(text: 'App notifications', id: 1),
              appsetingitems(text: 'Help and Support', id: 2),
              appsetingitems(text: 'Give a feedback', id: 3),
              10.height(),
              ZoomTapAnimation(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return Quitpage();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(31),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.rotate_left_outlined),
                      30.width(),
                      Text(
                        'Quit',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
