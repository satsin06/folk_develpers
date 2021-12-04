// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:folk_developers/screens/test.dart';

class BedRoom extends StatefulWidget {
  const BedRoom({Key? key}) : super(key: key);

  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff0a4da2),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Test()));
                            },
                            child: SvgPicture.asset(
                                'assets/svgs/Icon ionic-md-arrow-round-back.svg'),
                          ),
                          Text(
                            ' Bed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Room',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '4 Lights',
                        style: TextStyle(
                          color: Color(0xffffba61),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                  SvgPicture.asset('assets/svgs/light bulb.svg')
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(children: [
            Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.06,
                    width: screenSize.width * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/svgs/surface1.svg'),
                            Text(
                              'Main Light',
                              maxLines: 1,
                              style: TextStyle(color: Color(0xff002d67)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff002d67),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.06,
                    width: screenSize.width * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                                'assets/svgs/furniture_and_household.svg'),
                            Text(
                              'Desk Light',
                              maxLines: 1,
                              style: TextStyle(color: Color(0xffffffff)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.06,
                    width: screenSize.width * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/svgs/bed (1).svg',),
                            Text(
                              'Bed Room',
                              maxLines: 1,
                              style: TextStyle(color: Color(0xff002d67)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
          ],),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/bulb.svg'), label: 'Lights'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/Icon feather-home.svg'),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/Icon feather-settings.svg'),
              label: 'Settings'),
        ],
      ),
    );
  }
}
