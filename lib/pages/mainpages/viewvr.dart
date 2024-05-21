import 'package:flutter/material.dart';

import 'package:planets_app/pages/widgets/extensions.dart';

// ignore: must_be_immutable
class Viewvr extends StatefulWidget {
  int id;
  Viewvr(this.id);

  @override
  State<Viewvr> createState() => _ViewvrState();
}

class _ViewvrState extends State<Viewvr> {
  List allphoto = [
    'assets/images/vrpageimage/eart3d.png',
    'assets/images/vrpageimage/mars3d.png',
  ];

  Planetscontainer() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: widget.id == 1
              ? AssetImage(allphoto[0])
              : AssetImage(allphoto[1]),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(6),
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Image.asset('assets/icons/plus.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Image.asset('assets/icons/minus.png'),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Image.asset('assets/icons/vr.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Image.asset('assets/icons/off.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Image.asset('assets/icons/tel.png'),
                ),
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        color: Colors.black,
        child: Column(
          children: [
            Planetscontainer(),
            50.height(),
            Planetscontainer(),
          ],
        ),
      ),
    );
  }
}
