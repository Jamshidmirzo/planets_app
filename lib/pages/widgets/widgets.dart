import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class Topitem extends StatelessWidget {
  String maintext;
  String secondtext;
  bool haveornot;

  Topitem(
      {required this.maintext,
      required this.secondtext,
      required this.haveornot});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(maintext,
                style: GoogleFonts.poppins(
                    color: const Color(0xFFECECEC),
                    fontWeight: FontWeight.bold,
                    fontSize: 17)),
            Text(secondtext,
                style: GoogleFonts.poppins(
                    color: const Color(0xFFECECEC),
                    fontWeight: FontWeight.bold,
                    fontSize: 33)),
          ],
        ),
        const Spacer(),
        haveornot
            ? Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/qongiroq.png',
                      width: 36,
                      height: 36,
                    ),
                  ),
                  10.width(),
                ],
              )
            : 10.width(),
        ZoomTapAnimation(
          child: Container(
            width: 65,
            height: 65,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300.withOpacity(0.1)),
            child: Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300.withOpacity(0.3)),
              child: Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/allphoto/person.png'),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class Toppicksitem extends StatelessWidget {
  int id;
  String firsttext;
  String boldtext;
  String justtext;
  List allphoto = [
    'assets/images/main/firstitem.png',
    'assets/images/main/second.png',
    'assets/images/main/third.png'
  ];

  Toppicksitem(
      {required this.id,
      required this.firsttext,
      required this.boldtext,
      required this.justtext});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 13),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(allphoto[id]), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          firsttext,
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              boldtext,
                              style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              justtext,
                              style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        width: 59,
                        height: 54,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.grey.withOpacity(0.5)),
                        child: const Icon(
                          Icons.arrow_right_alt,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          30.height()
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Showplanetitem extends StatelessWidget {
  int id;
  String firsttext;

  String justtext;
  String date;
  List allphoto = [
    'assets/images/vrpageimage/vrfirstitem.png',
    'assets/images/vrpageimage/vrseconditem.jpeg',
    'assets/images/vrpageimage/vrfourthitem.png',
    'assets/images/vrpageimage/vrthirditem.png'
  ];

  Showplanetitem(
      {required this.id,
      required this.firsttext,
      required this.justtext,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 13),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(allphoto[id]), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                              height: 0.6,
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Tours',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          firsttext,
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              justtext,
                              style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        width: 59,
                        height: 54,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.grey.withOpacity(0.5)),
                        child: const Icon(
                          Icons.arrow_right_alt,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          30.height()
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Vrplanetitem extends StatelessWidget {
  int id;
  String firsttext;
  String boldtext;

  List allphoto = [
    'assets/images/planets/earth.png',
    'assets/images/planets/mars.png',
    'assets/images/planets/saturn.png',
    'assets/images/planets/jupiter.png',
  ];

  Vrplanetitem({
    required this.id,
    required this.firsttext,
    required this.boldtext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(allphoto[id]), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firsttext,
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        boldtext,
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      width: 59,
                      height: 54,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.grey.withOpacity(0.5)),
                      child: const Icon(
                        Icons.arrow_right_alt,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        30.height()
      ],
    );
  }
}

// ignore: must_be_immutable
class Answersitem extends StatelessWidget {
  String text;
  String boldtext;
  int id;
  List allphoto = [
    'assets/images/answers/first.png',
    'assets/images/answers/second.png',
    'assets/images/answers/third.png'
  ];
  Answersitem({required this.text, required this.boldtext, required this.id});
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(33),
            alignment: Alignment.center,
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(allphoto[id]), fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text(
                      boldtext,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  child: Container(
                    width: 59,
                    height: 54,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          20.height(),
        ],
      ),
    );
  }
}

class Topspacevoyager extends StatelessWidget {
  List allphoto = ['assets/images/allphoto/person.png'];
// String number;
//   Topspacevoyager(this.number);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34), color: Colors.grey.shade900),
      child: Column(
        children: [
          Text(
            'Top Space Voyager',
            style: GoogleFonts.poppins(
                fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          20.height(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300.withOpacity(0.1)),
                          child: Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300.withOpacity(0.3)),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/allphoto/person3.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 23,
                        child: Container(
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.height(),
                  Text(
                    'Alex Turner',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        height: 0.5,
                        color: Colors.white),
                  ),
                  Text(
                    '______',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/allphoto/rocket.png',
                        width: 17,
                        height: 17,
                      ),
                      Text(
                        '450 pts',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
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
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/allphoto/person.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -1,
                        left: 33,
                        child: Image.asset(
                          'assets/images/allphoto/korona.png',
                          width: 40,
                          height: 27,
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 40,
                        child: Container(
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
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
                    children: [
                      Image.asset(
                        'assets/images/allphoto/rocket.png',
                        width: 23,
                        height: 20,
                      ),
                      Text(
                        '542 pts',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 13),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300.withOpacity(0.1)),
                          child: Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300.withOpacity(0.3)),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/allphoto/person1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 25,
                        child: Container(
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.height(),
                  Text(
                    'Nick Burg',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        height: 0.5,
                        color: Colors.white),
                  ),
                  Text(
                    '______',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/allphoto/rocket.png',
                        width: 17,
                        height: 17,
                      ),
                      Text(
                        '312 pts',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Topscaperitem extends StatelessWidget {
  String number;
  String name;
  int id;
  bool isselected;
  Topscaperitem(
      {required this.number,
      required this.name,
      required this.id,
      required this.isselected});

  List allphoto = [
    'assets/images/allphoto/person4.png',
    'assets/images/allphoto/person5.png',
    'assets/images/allphoto/person.png',
    'assets/images/allphoto/person1.png',
    'assets/images/allphoto/person2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 13),
          width: double.infinity,
          height: 77,
          decoration: BoxDecoration(
            color: isselected ? Colors.white : Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Text(
                number,
                style: GoogleFonts.poppins(
                    color: isselected ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              10.width(),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(allphoto[id]), fit: BoxFit.fill),
                ),
              ),
              15.width(),
              Text(
                name,
                style: GoogleFonts.poppins(
                    color: isselected ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Text(
                '36 pts',
                style: GoogleFonts.poppins(
                    color: isselected ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        15.height(),
      ],
    );
  }
}

class appsetingitems extends StatelessWidget {
  List allphoto = [
    'assets/icons/nastroyka.png',
    'assets/icons/notific.png',
    'assets/icons/savol.png',
    'assets/icons/feedback.png',
  ];
  String text;
  int id;
  appsetingitems({required this.text, required this.id});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(31),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  allphoto[id],
                ),
                30.width(),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
          20.height(),
        ],
      ),
    );
  }
}

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("""
Terms and Conditions

1. Introduction

By using the Planets Application ("the App"), you agree to these Terms and Conditions ("Terms"). If you do not agree, do not use the App.

2. Eligibility

You must be at least 13 years old to use the App.

3. License

We grant you a non-exclusive, non-transferable, revocable license to use the App for personal, non-commercial purposes.

4. User Accounts

You may need to create an account to access certain features. You are responsible for the accuracy of your information and the security of your account.

5. User Conduct

You agree not to use the App for unlawful activities or in ways that could harm others. Prohibited actions include transmitting illegal content and spamming.

We are not liable for any indirect, incidental, special, or consequential damages related to your use of the App.
""");
  }
}
