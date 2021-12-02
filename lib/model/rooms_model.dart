// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Room {
  const Room({required this.roomName, required this.icon, required this.light});
  final String roomName;
  final SvgPicture icon;
  final String light;
}

List<Room> rooms = <Room>[
  Room(
      roomName: 'Bed room',
      icon: SvgPicture.asset('assets/svgs/bed.svg'),
      light: '4 Lights'),
  Room(
      roomName: 'Living room',
      icon: SvgPicture.asset('assets/svgs/bed.svg'),
      light: '2 Lights'),
  Room(
      roomName: 'Kitchen',
      icon: SvgPicture.asset('assets/svgs/kitchen.svg'),
      light: '5 Lights'),
  Room(
      roomName: 'Bathroom',
      icon: SvgPicture.asset('assets/svgs/bathtube.svg'),
      light: '1 Light'),
  Room(
      roomName: 'Outdoor',
      icon: SvgPicture.asset('assets/svgs/house.svg'),
      light: '5 Lights'),
  Room(
      roomName: 'Balcony',
      icon: SvgPicture.asset('assets/svgs/balcony.svg'),
      light: '2 Lights')
];

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key, required this.room}) : super(key: key);
  final Room room;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      width: screenSize.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(child: room.icon),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  room.roomName,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Text(
                room.light,
                style: TextStyle(
                    color: Color(0xffffba61), fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
