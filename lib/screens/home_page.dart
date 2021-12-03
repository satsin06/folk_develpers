// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folk_developers/model/rooms_model.dart';
import 'package:folk_developers/screens/bed_room.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a4da2),
      body: ListView(children: [
        SizedBox(
          height: screenSize.height * 0.2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Spacer(),
                    Text(
                      'Control',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Panel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xfff6f8fb),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 32, bottom: 32),
                child: Text(
                  'All rooms',
                  style: TextStyle(
                      color: Color(0xff002d67),
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1 / 1,
                children: List.generate(
                    rooms.length,
                    (index) => Center(
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => BedRoom()));
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 500),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                              begin: Offset(0, 1),
                                              end: Offset.zero)
                                          .animate(animation),
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return BedRoom();
                                  },
                                ),
                              );
                            },
                            child: RoomCard(
                              room: rooms[index],
                            ),
                          ),
                        )),
              ),
            ],
          ),
        ),
      ]),
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
