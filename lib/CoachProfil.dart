import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProfilCoachCoach.dart';
import 'dart:ui' as ui;
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import './ParentProfil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoachProfil extends StatelessWidget {
  CoachProfil({
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
            offset: Offset(17.0, 400.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                  width: 380.0,
                  height: 306.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(56.0),
                    color: const Color(0x1affffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
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
          Transform.translate(
            offset: Offset(124.0, 60.0),
            child: Text(
              'Coach Profil',
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
            offset: Offset(115.0, 250.0),
            child: Text(
              'Coach name',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 30,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(93.0, 305.0),
            child: SizedBox(
              width: 49.0,
              height: 51.0,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0.0, 0.0),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                        child: Container(
                          width: 52.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffA17EBB).withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0.0, 3.0),
                    child:
                        // Adobe XD layer: 'noun_Mail_1559570' (shape)
                        Container(
                      width: 48.0,
                      height: 41.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/tel.png'),
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
            offset: Offset(268.0, 305.0),
            child: SizedBox(
              width: 51.0,
              height: 51.0,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0.0, 0.0),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                        child: Container(
                          width: 52.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffA17EBB).withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 5.0, 48.0, 41.0),
                    size: Size(49.0, 51.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'noun_Mail_1559570' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/Mail.png'),
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
            offset: Offset(97.0, 365.0),
            child: Text(
              'Phone',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: const Color(0xb2fafafa),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(270.0, 365.0),
            child: Text(
              'E-Mail',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: const Color(0xb2fafafa),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
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
            offset: Offset(63.0, 444.0),
            child: Text(
              'About',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(65.0, 486.0),
            child: Container(
              width: 291.0,
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(183.0, 305.0),
            child: SizedBox(
              width: 51.0,
              height: 51.0,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0.0, 0.0),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                        child: Container(
                          width: 52.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffA17EBB).withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.4, 49.0, 42.3),
                    size: Size(49.0, 51.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
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
            offset: Offset(178.0, 365.0),
            child: Text(
              'Message',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 15,
                color: const Color(0xb2fafafa),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(145.0, 120.0),
            child: SizedBox(
              width: 125.0,
              height: 105.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 125.0, 105.0),
                    size: Size(125.0, 105.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(25.0, 15.0),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(63.0, 536.0),
            child: Text(
              'I am someone who has \nexperience, i started training \nfor 5 years in different gyms ',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 22,
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

const String _svg_dejghm =
    '<svg viewBox="33.2 55.9 27.4 31.1" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 60.63, 86.95)" d="M 0 28.44038009643555 L 19.51089668273926 15.52555370330811 L 0 2.610516786575317 L 3.943859815597534 0 L 27.38809967041016 15.51867389678955 L 27.37767601013184 15.52557468414307 L 27.38809967041016 15.53247356414795 L 3.943859815597534 31.0509033203125 L 0 28.44038009643555 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_antp4l =
    '<svg viewBox="126.2 63.6 26.6 32.0" ><path transform="translate(117.87, 55.22)" d="M 34.3646240234375 36.21055603027344 L 32.31343841552734 38.6822509765625 C 31.40428161621094 39.77779006958008 30.19844818115234 40.37361145019531 28.93838691711426 40.37361145019531 C 28.7406063079834 40.37361145019531 28.54282569885254 40.35823822021484 28.34185218811035 40.32748413085938 C 24.06403160095215 39.68937683105469 19.35236358642578 36.60264587402344 15.41587448120117 31.85914993286133 C 11.47938823699951 27.1194953918457 8.920988082885742 21.4419059753418 8.391444206237793 16.2870979309082 C 8.209613800048828 14.51116752624512 8.707257270812988 12.76983642578125 9.759964942932129 11.50131607055664 L 11.81115055084229 9.029623031616211 C 12.55761623382568 8.130125999450684 13.77301597595215 8.130125999450684 14.51629066467285 9.029623031616211 L 19.02698516845703 14.4650411605835 C 19.38745880126953 14.89941310882568 19.58843040466309 15.47985649108887 19.58843040466309 16.09489631652832 C 19.58843040466309 16.70993804931641 19.39064788818359 17.29038238525391 19.02698516845703 17.72475433349609 L 16.54514694213867 20.71538925170898 L 24.66694831848145 30.50221824645996 L 27.1487865447998 27.5115852355957 C 27.8952522277832 26.61208915710449 29.10746383666992 26.61208915710449 29.85392761230469 27.5115852355957 L 34.3646240234375 32.94700241088867 C 35.11108779907227 33.84649658203125 35.11108779907227 35.31106567382813 34.3646240234375 36.21055603027344 Z" fill="#000000" fill-opacity="0.88" stroke="none" stroke-width="1" stroke-opacity="0.88" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_aegkjr =
    '<svg viewBox="17.0 817.0 380.0 62.0" ><path transform="translate(17.0, 817.0)" d="M 24 0 L 356 0 C 369.2548217773438 0 380 10.74516487121582 380 24 L 380 38 C 380 51.25483703613281 369.2548217773438 62 356 62 L 24 62 C 10.74516487121582 62 0 51.25483703613281 0 38 L 0 24 C 0 10.74516487121582 10.74516487121582 0 24 0 Z" fill="#000000" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d3yaw3 =
    '<svg viewBox="9.4 9.4 41.3 35.2" ><path  d="M 25.87299919128418 33.64879989624023 C 23.29444885253906 32.19945907592773 21.54633903503418 29.4401798248291 21.54633903503418 26.2780704498291 C 21.54633903503418 21.61547088623047 25.3397388458252 17.82281112670898 30.00153923034668 17.82281112670898 C 34.66333770751953 17.82281112670898 38.45606994628906 21.61547088623047 38.45606994628906 26.27807235717773 C 38.45606994628906 29.44018173217773 36.70869064331055 32.19781112670898 34.13185119628906 33.64800262451172 C 39.2995719909668 35.09905242919922 43.33406066894531 39.21935272216797 44.63655090332031 44.52820205688477 C 48.3425407409668 40.79498291015625 50.63465881347656 35.66022109985352 50.63465881347656 29.99970245361328 C 50.63465881347656 18.61760330200195 41.38203811645508 9.365001678466797 29.99995803833008 9.365001678466797 C 18.62605667114258 9.365001678466797 9.365257263183594 18.61762237548828 9.365257263183594 29.99970245361328 C 9.365257263183594 35.65943145751953 11.65901756286621 40.79410171508789 15.36494731903076 44.52660369873047 C 16.67160034179688 39.22100067138672 20.70689964294434 35.10150146484375 25.87299919128418 33.64879989624023 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_59u8jl =
    '<svg viewBox="23.2 19.5 13.6 13.6" ><path  d="M 30.03639984130859 33.0807991027832 C 33.77132034301758 33.06096267700195 36.80543899536133 30.01774978637695 36.80543899536133 26.27793884277344 C 36.80543899536133 22.52653884887695 33.75312805175781 19.47343826293945 30.00172805786133 19.47343826293945 C 26.2495288848877 19.47343826293945 23.19728851318359 22.52653884887695 23.19728851318359 26.27793884277344 C 23.19728851318359 30.01939964294434 26.23219871520996 33.06345748901367 29.97041893005371 33.0807991027832 C 29.98110008239746 33.0807991027832 29.99263572692871 33.07915115356445 30.00508689880371 33.07915115356445 C 30.01490020751953 33.07920074462891 30.02560043334961 33.0807991027832 30.03639984130859 33.0807991027832 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ihk46t =
    '<svg viewBox="16.8 34.9 26.5 15.9" ><path transform="translate(0.0, 0.2)" d="M 16.77140045166016 45.81790161132813 C 20.35526084899902 48.82065200805664 24.97001075744629 50.63486099243164 29.99990081787109 50.63486099243164 C 35.03231048583984 50.63486099243164 39.64620208740234 48.82151031494141 43.2301025390625 45.81875991821289 C 42.11334228515625 39.43844985961914 36.62365341186523 34.7469596862793 30.03630256652832 34.73126220703125 C 30.02391242980957 34.73126220703125 30.01323127746582 34.73291015625 30.00163459777832 34.73291015625 C 29.99089241027832 34.73291015625 29.98100471496582 34.73126220703125 29.97026252746582 34.73126220703125 C 23.3843994140625 34.74869918823242 17.89310073852539 39.44020080566406 16.77140045166016 45.81790161132813 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s8llco =
    '<svg viewBox="173.6 111.5 47.7 56.0" ><defs><pattern id="image" patternUnits="userSpaceOnUse" width="512.0" height="512.0"><image xlink:href="assets/images/PROFILE.png" x="0" y="0" width="512.0" height="512.0" /></pattern></defs><path transform="translate(173.65, 111.49)" d="M 3.457022428512573 -7.723389217062504e-08 L 44.24988174438477 -7.723389217062504e-08 C 46.15914154052734 -7.723389217062504e-08 47.7069091796875 1.254165410995483 47.7069091796875 2.801256656646729 L 47.7069091796875 24.43104553222656 L 47.7069091796875 53.223876953125 C 47.7069091796875 54.77096939086914 46.15914154052734 56.025146484375 44.24988174438477 56.025146484375 L 3.457022428512573 56.025146484375 C 1.547761559486389 56.025146484375 1.611257687272882e-07 54.77096939086914 1.611257687272882e-07 53.223876953125 L 1.611257687272882e-07 24.43104553222656 L 1.611257687272882e-07 2.801256656646729 C 1.611257687272882e-07 1.254165410995483 1.547761559486389 -7.723389217062504e-08 3.457022428512573 -7.723389217062504e-08 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
