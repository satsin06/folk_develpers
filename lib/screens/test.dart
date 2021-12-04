// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:folk_developers/model/rooms_model.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a4da2),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(children: [
            Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.08,
                    width: screenSize.width * 0.3,
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
                  SizedBox(width: screenSize.width * 0.1,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff002d67),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.08,
                    width: screenSize.width * 0.3,
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
                  SizedBox(width: screenSize.width * 0.1,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: screenSize.height * 0.08,
                    width: screenSize.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/svgs/bed.svg'),
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
      )
    );
  }
}
