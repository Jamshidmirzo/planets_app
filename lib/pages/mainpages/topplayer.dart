import 'package:flutter/material.dart';

import 'package:planets_app/pages/mainpages/appsetingspage.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';

class Topplayer extends StatefulWidget {
  const Topplayer({super.key});

  @override
  State<Topplayer> createState() => _TopplayerState();
}

class _TopplayerState extends State<Topplayer> {
  bool tamarselected = false;
  bool richardselected = false;
  bool youselectred = false;
  bool messiselected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/allphoto/backgroundmain.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            color: Colors.black54,
            padding: EdgeInsets.only(right: 20, left: 20, top: 80),
            child: Column(
              children: <Widget>[
                Topitem(
                    maintext: 'Top Performers',
                    secondtext: 'Leaderboard',
                    haveornot: true),
                Topspacevoyager(),
                40.height(),
                IconButton(
                  onPressed: () {
                    tamarselected = !tamarselected;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Appsetingspage(name: 'Tamaraschmidit', id: 0);
                        },
                      ),
                    );

                    setState(() {});
                  },
                  icon: Topscaperitem(
                      number: '4',
                      name: 'Tamara Schmidt',
                      id: 0,
                      isselected: tamarselected),
                ),
                IconButton(
                  onPressed: () {
                    richardselected = !richardselected;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Appsetingspage(name: 'RichardSched', id: 1);
                        },
                      ),
                    );
                    setState(() {});
                  },
                  icon: Topscaperitem(
                      number: '5',
                      name: 'Richard Sched',
                      id: 1,
                      isselected: richardselected),
                ),
                IconButton(
                  onPressed: () {
                    youselectred = !youselectred;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Appsetingspage(name: 'You', id: 2);
                        },
                      ),
                    );
                    setState(() {});
                  },
                  icon: Topscaperitem(
                      number: '4',
                      name: 'You',
                      id: 2,
                      isselected: youselectred),
                ),
                InkWell(
                  onTap: () {
                    messiselected = !messiselected;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Appsetingspage(name: 'Leomessi', id: 3);
                        },
                      ),
                    );
                    setState(() {});
                  },
                  child: Topscaperitem(
                      number: '5',
                      name: 'Leo Messi',
                      id: 3,
                      isselected: messiselected),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
