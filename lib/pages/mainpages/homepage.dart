import 'package:flutter/material.dart';
import 'package:planets_app/pages/mainpages/answerspage.dart';
import 'package:planets_app/pages/mainpages/homepages.dart';
import 'package:planets_app/pages/mainpages/topplayer.dart';
import 'package:planets_app/pages/mainpages/vrpage.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  String names;
  Homepage(this.names);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Homepages(name: widget.names),
      Vrpage(),
      Answerspage(),
      Topplayer()
    ];
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 90,
          shape: const CircularNotchedRectangle(),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  selectedindex = 0;
                  setState(() {});
                },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: selectedindex == 0
                          ? Colors.grey.shade100.withOpacity(0.5)
                          : Colors.black),
                  child: Image.asset('assets/icons/home.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  selectedindex = 1;
                  setState(() {});
                },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: selectedindex == 1
                          ? Colors.grey.shade100.withOpacity(0.5)
                          : Colors.black),
                  child: Image.asset('assets/icons/vr2.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  selectedindex = 2;
                  setState(() {});
                },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: selectedindex == 2
                          ? Colors.grey.shade100.withOpacity(0.5)
                          : Colors.black),
                  child: Image.asset('assets/icons/answers.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  selectedindex = 3;
                  setState(() {});
                },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: selectedindex == 3
                          ? Colors.grey.shade100.withOpacity(0.5)
                          : Colors.black),
                  child: Image.asset('assets/icons/reward.png'),
                ),
              ),
            ],
          ),
        ),
        body: screens[selectedindex]);
  }
}
