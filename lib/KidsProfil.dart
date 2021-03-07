import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:flutter_application_1/ActivitiesParent.dart';
import 'package:flutter_application_1/ChatParent.dart';
import 'package:flutter_application_1/PerformanceParent.dart';
import 'package:flutter_application_1/Planingparent1.dart';
import 'dart:ui' as ui;
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import './ParentProfil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KidsProfil extends StatelessWidget {
  KidsProfil({
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
            offset: Offset(0.0, 0.0),
            child:
                // Adobe XD layer: 'leslie-jones-urBiLD…' (shape)
                Container(
              width: 1344.0,
              height: 896.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/coachProfile.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.21), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 155.0),
            child: SizedBox(
              width: 110.0,
              height: 110.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 110.0, 110.0),
                    size: Size(110.0, 110.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, -2.0, 110.0, 110.0),
                    size: Size(110.0, 110.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/kid.png'),
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
            offset: Offset(326.0, 55.0),
            child:
                // Adobe XD layer: 'noun_Settings_36963…' (shape)
                Container(
              width: 40.8,
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
                          pageBuilder: () => ParentProfil(),
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
                        // Adobe XD layer: 'noun_Home_3128906' (shape)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ChatParent(),
                        ),
                      ],
                      child:
                          // Adobe XD layer: 'noun_messenger_3324…' (shape)
                          Container(
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
            offset: Offset(148.0, 145.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 249.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: const Color(0xffffffff).withOpacity(.7),
                    border:
                        Border.all(width: 1.0, color: const Color(0x707070)),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(137.0, 60.0),
            child: Text(
              'Kids profil',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 27,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(207.0, 166.0),
            child: Text(
              'Kid\'s name',
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
            offset: Offset(207.0, 211.0),
            child: Text(
              'Kid\'s age',
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
            offset: Offset(37.0, 380.0),
            child: Container(
              width: 340.0,
              height: 113.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xabffffff),
                border: Border.all(width: 1.0, color: const Color(0xab707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(70.0, 325.5),
            child: Text(
              'Martial art',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 30,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(221.0, 386.0),
            child:
                // Adobe XD layer: '4466779-removebg-pr…' (shape)
                Container(
              width: 149.0,
              height: 93.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Kidsprofil.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(72.0, 396.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 23,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Your kid ',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'is practicing\njudo',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 590.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ActivitiesParent(),
                ),
              ],
              child: SizedBox(
                width: 340.0,
                height: 66.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 340.0, 66.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33.0),
                          color: const Color(0xabffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xab707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(293.8, 18.5, 24.4, 29.1),
                      size: Size(340.0, 66.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_xt9e6s,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(40.0, 12.0, 130.0, 44.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Activities',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 30,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 665.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Planingparent1(),
                ),
              ],
              child: SizedBox(
                width: 340.0,
                height: 66.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 340.0, 66.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33.0),
                          color: const Color(0xabffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xab707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(293.8, 18.5, 24.4, 29.1),
                      size: Size(340.0, 66.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_rt4wj0,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(40.0, 14.0, 127.0, 44.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Planning',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 30,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 515.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PerformanceParent(),
                ),
              ],
              child: SizedBox(
                width: 340.0,
                height: 66.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 340.0, 66.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33.0),
                          color: const Color(0xabffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xab707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(293.8, 18.5, 24.4, 29.1),
                      size: Size(340.0, 66.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_xt9e6s,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(40.0, 15.0, 184.0, 44.0),
                      size: Size(340.0, 66.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Performance',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 30,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(33.2, 60.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
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

const String _svg_xt9e6s =
    '<svg viewBox="330.8 566.5 24.4 29.1" ><path transform="translate(330.81, 566.47)" d="M 0 26.60819053649902 L 17.37374305725098 14.52536678314209 L 0 2.442341804504395 L 3.511863470077515 0 L 24.38810729980469 14.51892852783203 L 24.37882423400879 14.52538394927979 L 24.38810729980469 14.53183937072754 L 3.511863470077515 29.050537109375 L 0 26.60819053649902 Z" fill="#000000" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rt4wj0 =
    '<svg viewBox="330.8 684.5 24.4 29.1" ><path transform="translate(330.81, 684.47)" d="M 0 26.60819053649902 L 17.37374305725098 14.52536678314209 L 0 2.442341804504395 L 3.511863470077515 0 L 24.38810729980469 14.51892852783203 L 24.37882423400879 14.52538394927979 L 24.38810729980469 14.53183937072754 L 3.511863470077515 29.050537109375 L 0 26.60819053649902 Z" fill="#000000" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dejghm =
    '<svg viewBox="33.2 55.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 60.63, 86.95)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
