import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_application_1/ParentProfil.dart';
import 'package:flutter_application_1/PlayersCoach.dart';
import 'package:flutter_application_1/ProfilCoachCoach.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/page_link.dart';

class Performancecoach extends StatelessWidget {
  Performancecoach({
    Key key,
  }) : super(key: key);
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
            offset: Offset(132.0, 60.0),
            child: Text(
              'Performance',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(39.2, 60.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PlayersCoach(),
                ),
              ],
              child: SvgPicture.string(
                _svg_vviva,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(326.2, 55.0),
            child:
                // Adobe XD layer: 'noun_Settings_36963…' (shape)
                Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/engro.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 320.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  width: 414.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(56.0),
                      topRight: Radius.circular(56.0),
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
            offset: Offset(250.0, 350.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  width: 2.0,
                  height: 320.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(56.0),
                      topRight: Radius.circular(56.0),
                    ),
                    color: const Color(0xff707070),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(159.0, 118.0),
            child: ClipOval(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 80.0, sigmaY: 80.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff).withOpacity(.8),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(175.0, 130.2),
            child: Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/PROFILE.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(150.0, 250.0),
            child: Text(
              'Kid\'s name',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
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
                    child: Container(
                      width: 380.0,
                      height: 463.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: const Color(0xffffffff).withOpacity(.3),
                        border: Border.all(
                            width: 1.0,
                            color: const Color(0xff707070).withOpacity(.7)),
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
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/home.png'),
                          fit: BoxFit.fill,
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
                    bounds: Rect.fromLTWH(316.4, 10.0, 41.3, 41.5),
                    size: Size(380.0, 62.0),
                    pinRight: true,
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
                          pageBuilder: () => ProfilCoachCoach(),
                        ),
                      ],
                      child: Container(
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
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/messages.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(57.0, 372.0),
            child: Text(
              'Endurance',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 608.0),
            child: Text(
              'Presence',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 490.0),
            child: Text(
              'Discipline',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(291.0, 608.0),
            child: Text(
              '50%',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(291.0, 490.0),
            child: Text(
              '45%',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(291.0, 372.0),
            child: Text(
              '75%',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_vviva =
    '<svg viewBox="39.2 44.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 66.63, 75.95)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
