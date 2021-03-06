import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_application_1/HomeCoach.dart';
import 'dart:ui' as ui;
import './ProfilCoachCoach.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class ChatCoach extends StatelessWidget {
  ChatCoach({
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
            offset: Offset(175.0, 60.0),
            child: Text(
              'CHAT',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(354.0, 60.0),
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.5, 7.5, 25.0, 25.0),
                    size: Size(40.0, 40.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 12.5, 25.0, 1.0),
                          size: Size(25.0, 25.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_zb7292,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.5, 0.0, 1.0, 25.0),
                          size: Size(25.0, 25.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_i70rje,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 40.0),
                    size: Size(40.0, 40.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_qrt3sx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 240.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 414.0,
                  height: 662.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffffffff).withOpacity(.3),
                    border: Border.all(
                        width: 1.0,
                        color: const Color(0xff707070).withOpacity(.7)),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 257.0),
            child: Column(
              children: [
                Container(
                  width: 377.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffffffff).withOpacity(.7),
                  ),
                  child: ListTile(
                    leading: Icon(CupertinoIcons.loop),
                    title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search'),
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff674e4e),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 321.0),
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                    size: Size(70.0, 70.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                          size: Size(70.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.7, 17.8, 24.7, 34.4),
                          size: Size(70.0, 70.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PROFILE.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 617.0),
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                    size: Size(70.0, 70.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                          size: Size(70.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.7, 17.8, 24.7, 34.4),
                          size: Size(70.0, 70.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PROFILE.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 517.0),
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                    size: Size(70.0, 70.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                          size: Size(70.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.7, 17.8, 24.7, 34.4),
                          size: Size(70.0, 70.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PROFILE.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 419.0),
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                    size: Size(70.0, 70.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 70.0),
                          size: Size(70.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.7, 17.8, 24.7, 34.4),
                          size: Size(70.0, 70.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PROFILE.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                          pageBuilder: () => HomeCoach(),
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
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ChatCoach(),
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
            offset: Offset(101.0, 109.0),
            child:
                // Adobe XD layer: 'onlinelogomaker-011…' (shape)
                Container(
              width: 212.0,
              height: 109.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 328.0),
            child: SizedBox(
              width: 149.0,
              height: 54.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 107.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Coach Name',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 28.0, 149.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'message envoyé  ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff948086),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 427.0),
            child: SizedBox(
              width: 149.0,
              height: 54.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 108.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'father Name',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 28.0, 149.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'message envoyé  ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff948086),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 625.0),
            child: SizedBox(
              width: 149.0,
              height: 54.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'father2 Name',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 28.0, 149.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'message envoyé  ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff948086),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 526.0),
            child: SizedBox(
              width: 149.0,
              height: 54.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 107.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Coach Name',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 28.0, 149.0, 26.0),
                    size: Size(149.0, 54.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'message envoyé  ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI Symbol',
                        fontSize: 19,
                        color: const Color(0xff948086),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 401.0),
            child: Container(
              width: 269.0,
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 1.0, color: const Color(0xff6a6a6a)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 599.0),
            child: Container(
              width: 269.0,
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 1.0, color: const Color(0xff6a6a6a)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 505.0),
            child: Container(
              width: 269.0,
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 1.0, color: const Color(0xff6a6a6a)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 698.0),
            child: Container(
              width: 269.0,
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 1.0, color: const Color(0xff6a6a6a)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zb7292 =
    '<svg viewBox="361.5 54.5 25.0 1.0" ><path transform="translate(361.5, 54.5)" d="M 0 0 L 25 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_i70rje =
    '<svg viewBox="374.0 42.0 1.0 25.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 374.0, 42.0)" d="M 0 0 L 25 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_qrt3sx =
    '<svg viewBox="354.0 35.0 40.0 40.0" ><path transform="translate(354.0, 35.0)" d="M 20 0 C 31.04569625854492 0 40 8.954304695129395 40 20 C 40 31.04569625854492 31.04569625854492 40 20 40 C 8.954304695129395 40 0 31.04569625854492 0 20 C 0 8.954304695129395 8.954304695129395 0 20 0 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
