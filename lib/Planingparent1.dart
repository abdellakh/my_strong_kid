import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_application_1/ChatParent.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/KidsProfil.dart';
import 'package:flutter_application_1/ParentProfil.dart';
import './Composant226.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:table_calendar/table_calendar.dart';
import 'ChatCoach.dart';
import 'HomeCoach.dart';
import 'ProfilCoachCoach.dart';

class Planingparent1 extends StatefulWidget {
  Planingparent1({
    Key key,
  }) : super(key: key);

  @override
  _Planingparent1State createState() => _Planingparent1State();
}

class _Planingparent1State extends State<Planingparent1> {
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  String dropdownValue = '10:00am';

  String dropdownValue1 = '10:00am';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff450079), Color(0xffF3E8F3)]),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 0.0),
            child:
                // Adobe XD layer: 'anastase-maragos-I6…' (shape)
                Container(
              width: 598.0,
              height: 897.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                      'assets/images/backgroundplaningparent.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.32), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(70.0),
            color: const Color(0xffffffff).withOpacity(.5),
            child: TableCalendar(
              calendarController: _calendarController,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 376.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                child: Container(
                  width: 414.0,
                  height: 517.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(78.0),
                      topRight: Radius.circular(78.0),
                    ),
                    color: const Color(0xffffffff).withOpacity(.3),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 430.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Text(
                    '7:00pm  |',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  title: Text(
                    'Traing Session',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(CupertinoIcons.time),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      '10:00am',
                      '11:00am',
                      '12:00pm',
                      '1:00pm',
                      '2:00pm',
                      '3:00pm',
                      '4:00pm',
                      '5:00pm',
                      '6:00pm',
                      '7:00pm',
                      '8:00pm',
                      '9:00pm',
                      '10:00pm',
                      '11:00pm',
                      '12:00am',
                      '1:00am',
                      '2:00am',
                      '3:00am',
                      '4:00am',
                      '5:00am',
                      '6:00am',
                      '7:00am',
                      '8:00am',
                      '9:00am'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 25.0),
                        ),
                      );
                    }).toList(),
                  ),
                  title: TextField(style: TextStyle(fontSize: 25.0)),
                ),
                Divider(),
                ListTile(
                  leading: DropdownButton<String>(
                    value: dropdownValue1,
                    icon: Icon(CupertinoIcons.time),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1 = newValue;
                      });
                    },
                    items: <String>[
                      '10:00am',
                      '11:00am',
                      '12:00pm',
                      '1:00pm',
                      '2:00pm',
                      '3:00pm',
                      '4:00pm',
                      '5:00pm',
                      '6:00pm',
                      '7:00pm',
                      '8:00pm',
                      '9:00pm',
                      '10:00pm',
                      '11:00pm',
                      '12:00am',
                      '1:00am',
                      '2:00am',
                      '3:00am',
                      '4:00am',
                      '5:00am',
                      '6:00am',
                      '7:00am',
                      '8:00am',
                      '9:00am'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 25.0),
                        ),
                      );
                    }).toList(),
                  ),
                  title: TextField(style: TextStyle(fontSize: 25.0)),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 750.0),
            child: SizedBox(
              width: 380.0,
              height: 62.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 380.0, 62.0),
                    size: Size(380.0, 62.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                        child: Container(
                          width: 380.0,
                          height: 443.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56.0),
                            color: const Color(0x1affffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 4.0, 56.0, 48.0),
                    size: Size(380.0, 62.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'noun_Home_3128906' (shape)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => Home(),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/home.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 8.0, 47.0, 40.0),
                    size: Size(380.0, 62.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'noun_notifications_…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/notif.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(316.4, 7.0, 41.3, 41.5),
                    size: Size(380.0, 62.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'noun_messenger_3324…' (shape)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ParentProfil(),
                        ),
                      ],
                      child:
                          // Adobe XD layer: 'noun_notifications_…' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/Profilrbar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(210.7, 4.0, 62.6, 54.0),
                    size: Size(380.0, 62.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'noun_messenger_3324…' (shape)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ChatParent(),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                const AssetImage('assets/images/messages.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(33.0, 60.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => KidsProfil(),
                ),
              ],
              child: SvgPicture.string(
                _svg_dejghm,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_biuix9 =
    '<svg viewBox="33.0 51.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 60.39, 82.91)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ux2wfi =
    '<svg viewBox="58.5 451.5 149.0 1.0" ><path transform="translate(58.5, 451.5)" d="M 0 0 L 149 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_88eow8 =
    '<svg viewBox="217.5 479.5 1.0 55.0" ><path transform="translate(217.5, 479.5)" d="M 0 0 L 0 55" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f0q6k =
    '<svg viewBox="9.5 569.5 395.0 163.0" ><path transform="translate(9.5, 569.5)" d="M 0 0 L 395 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(9.5, 650.5)" d="M 0 0 L 395 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(9.5, 731.5)" d="M 0 0 L 395 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dejghm =
    '<svg viewBox="33.2 55.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 60.63, 86.95)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
