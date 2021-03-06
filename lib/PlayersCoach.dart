import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_application_1/Performancecoach.dart';
import './HomeCoach.dart';
import 'package:adobe_xd/page_link.dart';
import './ProfilCoachCoach.dart';
import './ChatCoach.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayersCoach extends StatelessWidget {
  PlayersCoach({
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
            offset: Offset(32.5, 60.9),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeCoach(),
                ),
              ],
              child: SvgPicture.string(
                _svg_9zjiwt,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(166.0, 60.0),
            child: Text(
              'Players',
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
            offset: Offset(101.0, 116.0),
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
            offset: Offset(17.0, 340.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 380.0,
                  height: 380.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
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
            offset: Offset(331.0, 55.0),
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
            offset: Offset(47.0, 300.0),
            child: Text(
              'Membres ',
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
            offset: Offset(294.0, 300.0),
            child: Text(
              'Groupe',
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
            offset: Offset(250.0, 365.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 1.0,
                  height: 340.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff000000)),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(250.0, 300.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 1.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff000000)),
                  ),
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
            offset: Offset(77.0, 380.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Performancecoach(),
                ),
              ],
              child: Text(
                'Kid 1 ',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(140.0, 233.0),
            child: Text(
              'Coach name',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Transform.translate(
            offset: Offset(79.0, 660.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Performancecoach(),
                ),
              ],
              child: Text(
                'Kid 5',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(77.0, 590.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Performancecoach(),
                ),
              ],
              child: Text(
                'Kid 4',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(77.0, 520.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Performancecoach(),
                ),
              ],
              child: Text(
                'Kid 3',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(77.0, 450.0),
            child:
                // Adobe XD layer: 'noun_Home_3128906' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Performancecoach(),
                ),
              ],
              child: Text(
                'Kid 2',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(311.0, 660.0),
            child: Text(
              '8 PM',
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
            offset: Offset(311.0, 590.0),
            child: Text(
              '8 PM',
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
            offset: Offset(312.0, 520.0),
            child: Text(
              '6 PM',
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
            offset: Offset(304.0, 450.0),
            child: Text(
              '10 AM',
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
            offset: Offset(304.0, 380.0),
            child: Text(
              '10 AM',
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

const String _svg_9zjiwt =
    '<svg viewBox="32.5 39.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 59.87, 70.95)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
