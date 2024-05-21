import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';

class Answerspage extends StatefulWidget {
  const Answerspage({super.key});

  @override
  State<Answerspage> createState() => _AnswerspageState();
}

class _AnswerspageState extends State<Answerspage> {
  bool removecontainer = true;

  candeletecontainer() {
    return Container(
      width: double.infinity,
      height: 300,
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
                        image: AssetImage('assets/icons/answers1.png'))),
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
            "Here, you have the power to ask, answer, and voice your thoughts on a wide range of topics. Engage with our community and gain insights through collective wisdom.",
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
          height: 950,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/allphoto/backgroundmain.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            color: Colors.black54,
            padding: EdgeInsets.only(right: 20, left: 20, top: 80),
            child: Column(
              children: [
                Topitem(
                    maintext: "Let's answare",
                    secondtext: 'Q&A Polls',
                    haveornot: true),
                20.height(),
                removecontainer ? candeletecontainer() : 1.height(),
                20.height(),
                Answersitem(
                    text: 'Questioners from', boldtext: 'Planets', id: 0),
                Answersitem(
                    text: 'Questioners from', boldtext: 'Galaxies', id: 1),
                Answersitem(text: 'Questioners from', boldtext: 'Stars', id: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
