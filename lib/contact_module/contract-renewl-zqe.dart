// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';
//
// class Scene extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 360;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // contractrenewljjW (265:167)
//         padding: EdgeInsets.fromLTRB(23*fem, 37*fem, 25*fem, 9*fem),
//         width: double.infinity,
//         decoration: BoxDecoration (
//           color: Color(0xff000000),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               // groupVMJ (265:169)
//               margin: EdgeInsets.fromLTRB(295.26*fem, 0*fem, 0*fem, 3.45*fem),
//               child: TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom (
//                   padding: EdgeInsets.zero,
//                 ),
//                 child: Container(
//                   width: 15.26*fem,
//                   height: 17.55*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/group-LTa.png',
//                     width: 15.26*fem,
//                     height: 17.55*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               // autogrouphyfeteL (Uoz2bVe2DdAV6gnwdzHyFE)
//               margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 0*fem, 63*fem),
//               height: 72*fem,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     // vectorvqv (265:172)
//                     margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 25*fem, 0*fem),
//                     width: 20*fem,
//                     height: 19*fem,
//                     child: Image.asset(
//                       'assets/page-1/images/vector-dqi.png',
//                       width: 20*fem,
//                       height: 19*fem,
//                     ),
//                   ),
//                   Container(
//                     // renewalrequestC2k (265:168)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 86*fem, 0*fem),
//                     constraints: BoxConstraints (
//                       maxWidth: 102*fem,
//                     ),
//                     child: Text(
//                       'Renewal\nrequest',
//                       style: SafeGoogleFont (
//                         'Poppins',
//                         fontSize: 24*ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.5*ffem/fem,
//                         color: Color(0xffffffff),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     // component66o2Y (265:173)
//                     margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 6*fem),
//                     padding: EdgeInsets.fromLTRB(20*fem, 18*fem, 19.47*fem, 18.39*fem),
//                     height: double.infinity,
//                     decoration: BoxDecoration (
//                       border: Border.all(color: Color(0xffffffff)),
//                       borderRadius: BorderRadius.circular(100*fem),
//                       gradient: LinearGradient (
//                         begin: Alignment(0, -1),
//                         end: Alignment(0, 1),
//                         colors: <Color>[Color(0xff1b1a1a), Color(0x00d9d9d9)],
//                         stops: <double>[0, 1],
//                       ),
//                     ),
//                     child: Center(
//                       // groupjqJ (I265:173;141:269)
//                       child: SizedBox(
//                         width: 20.53*fem,
//                         height: 23.61*fem,
//                         child: Image.asset(
//                           'assets/page-1/images/group-s7N.png',
//                           width: 20.53*fem,
//                           height: 23.61*fem,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroupgfteQgY (Uoz2npeUp2qKnqMKBzGFTe)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               padding: EdgeInsets.fromLTRB(27*fem, 10*fem, 25*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Container(
//                 // component67pkG (265:182)
//                 width: double.infinity,
//                 height: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // autogroupe7exwpt (Uoz329bcDTGYitbWu3e7Ex)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                       width: 138*fem,
//                       height: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // autogroupqfc4dBv (Uoz37Pws6N2Z6u9a4KqFc4)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // id1809XHJ (I265:182;206:87)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   // renewamN (267:164)
//                                   '(Renew)',
//                                   textAlign: TextAlign.center,
//                                   style: SafeGoogleFont (
//                                     'Poppins',
//                                     fontSize: 10*ffem,
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.5*ffem/fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // rentalagreement4gY (I265:182;207:88)
//                             width: double.infinity,
//                             child: Text(
//                               'Rental Agreement',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 15*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xff89c5cc),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // autogroupfzckNSL (Uoz3FosWkiAW2bd2JHFZck)
//                       width: 87*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // autogrouptjqeiWC (Uoz3LyPaMAJppCEFY1tJqE)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                             padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                             width: double.infinity,
//                             height: 19*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xff156f1e),
//                               borderRadius: BorderRadius.circular(15*fem),
//                             ),
//                             child: Text(
//                               'View',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 12*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xffffffff),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // autogroupm55jMZA (Uoz3QUHkGS9VjXvxJsM55J)
//                             padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                             width: double.infinity,
//                             height: 19*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffa50000),
//                               borderRadius: BorderRadius.circular(15*fem),
//                             ),
//                             child: Text(
//                               'Send ',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 12*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xffffffff),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               // autogroupywwj2QQ (Uoz3exsbeHCGyNQiwYYWwJ)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               padding: EdgeInsets.fromLTRB(27*fem, 10*fem, 25*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Container(
//                 // component68uyz (265:183)
//                 width: double.infinity,
//                 height: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // autogroupkpkcreL (Uoz3rdCqNXKr3AkQBikPkC)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                       width: 138*fem,
//                       height: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // autogroup9yncyDA (Uoz3wTQ7q91ST7aKjH9YNC)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // id180974U (I265:183;206:87)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   // renewdHi (268:165)
//                                   '(Renew)',
//                                   textAlign: TextAlign.center,
//                                   style: SafeGoogleFont (
//                                     'Poppins',
//                                     fontSize: 10*ffem,
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.5*ffem/fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // rentalagreementNFJ (I265:183;207:88)
//                             width: double.infinity,
//                             child: Text(
//                               'Rental Agreement',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 15*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xff89c5cc),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // autogroup54rlhYU (Uoz44TCTfggnHnyjGz54rL)
//                       width: 87*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // autogroupudulqeg (Uoz49HPk8JNNhjoepYUDUL)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                             padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                             width: double.infinity,
//                             height: 19*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xff156f1e),
//                               borderRadius: BorderRadius.circular(15*fem),
//                             ),
//                             child: Text(
//                               'View',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 12*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xffffffff),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // autogrouphp7v6Ki (Uoz4CSy8ujkKFRj3uDhP7v)
//                             padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                             width: double.infinity,
//                             height: 19*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffa50000),
//                               borderRadius: BorderRadius.circular(15*fem),
//                             ),
//                             child: Text(
//                               'Send ',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Poppins',
//                                 fontSize: 12*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.5*ffem/fem,
//                                 color: Color(0xffffffff),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               // autogroupte8yZUC (Uoz4T2PBa3Qn5g9eTSTE8Y)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewU5N (268:166)
//                     left: 85*fem,
//                     top: 14*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component69Z6p (265:184)
//                     left: 27*fem,
//                     top: 10*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogroupyuvat96 (Uoz4eSDqSuhJNEeqvyyuVa)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809DSG (I265:184;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementXSx (I265:184;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroup4fzseXa (Uoz4jWuhkuDwZRKFFB4FZS)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroupdoaxNyN (Uoz4p1nD5gSobiMs6ZDoax)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroupmmgtp4g (Uoz4smAxrL8XJHu3e3MmGt)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroupl3vjEu6 (Uoz556BRSjoMzSTRC3L3VJ)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewYet (268:167)
//                     left: 85*fem,
//                     top: 14*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component70eC8 (265:185)
//                     left: 26*fem,
//                     top: 10*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogroup9w4tZZz (Uoz5FW3jv6hhA3chb49w4t)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809Hkt (I265:185;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementd44 (I265:185;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroupz5gtMkk (Uoz5LLF2NiPHZzSd8cZ5gt)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroup3sgyiLQ (Uoz5Qacwr7m6q3emDN3SGY)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroupvd2qyXE (Uoz5TFDAvoSwpFuCkmvD2Q)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroupjff6Fje (Uoz5gVL73mGV9uCaYHjff6)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewLm6 (268:168)
//                     left: 85*fem,
//                     top: 12*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // renewSZE (268:169)
//                     left: 85*fem,
//                     top: 12*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component71k48 (265:186)
//                     left: 27*fem,
//                     top: 10*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogroupvwccfRz (Uoz5tEVY4U1jp7V5i1Vwcc)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809oHJ (I265:186;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementLHE (I265:186;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroupdtnkEtQ (Uoz5xpCEfhrHSpUXUwDtnk)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroup9rdnaBa (Uoz62yjxrecR7Tjqe99rDn)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroup9rgt2JU (Uoz65ozaWFXdHVsw2e9RGt)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroup45seJ16 (Uoz6JUJ9e13PUFZXMM45sE)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewzPi (268:170)
//                     left: 86*fem,
//                     top: 10*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component72gnL (265:187)
//                     left: 28*fem,
//                     top: 10*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogroupxaz6p7r (Uoz6UPBJQcFd5P3rD6XaZ6)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809wiG (I265:187;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementgQx (I265:187;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroupv8kipXA (Uoz6ZJCn9gYu5jpbgCV8Ki)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroupmueuMX6 (Uoz6dxjg3P18JrksNfmUeU)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroupksrcott (Uoz6gspUySY25JqngiKSrC)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroupjkuztfS (Uoz6t7zkHPbBB3TLKAjKuz)
//               margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewzyN (268:171)
//                     left: 85*fem,
//                     top: 16*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component73Vv8 (265:188)
//                     left: 27*fem,
//                     top: 10*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogrouppqnyX68 (Uoz72nQyo7aAsymGKkpqNY)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809eRe (I265:188;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementZoW (I265:188;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroupantgVx4 (Uoz787bRxUwrrQG9QaaNtG)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroupwlkjdYU (Uoz7CH9A9RhzX3XTZnWLKJ)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroupchfeRz8 (Uoz7FH4AMwrZsuZCoNchfe)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroupjw7jueQ (Uoz7a21wDCHANoF7WoJW7J)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
//               width: 311*fem,
//               height: 66*fem,
//               decoration: BoxDecoration (
//                 color: Color(0xff1c1d1f),
//                 borderRadius: BorderRadius.circular(20*fem),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // renewDf6 (268:172)
//                     left: 86*fem,
//                     top: 7*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44*fem,
//                         height: 15*fem,
//                         child: Text(
//                           '(Renew)',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Poppins',
//                             fontSize: 10*ffem,
//                             fontWeight: FontWeight.w500,
//                             height: 1.5*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // component747Eg (265:189)
//                     left: 28*fem,
//                     top: 0*fem,
//                     child: Container(
//                       width: 259*fem,
//                       height: 46*fem,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // autogrouprls2RmA (Uoz7q1axHo23B7PqgjrLs2)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
//                             width: 138*fem,
//                             height: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // id1809m4L (I265:189;206:87)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'ID 1809',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // rentalagreementJKA (I265:189;207:88)
//                                   width: double.infinity,
//                                   child: Text(
//                                     'Rental Agreement',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 15*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xff89c5cc),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // autogroupduilSAU (Uoz7w6FA1HvsVFQA5TdUiL)
//                             width: 87*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // autogroup7qhzaXa (Uoz81Ld5UhJgkJcJAD7qHz)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                   padding: EdgeInsets.fromLTRB(32*fem, 0*fem, 26*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xff156f1e),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'View',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // autogroup7qm6dVr (Uoz84Ash8JDtvLkPYi7QM6)
//                                   padding: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 26.5*fem, 0*fem),
//                                   width: double.infinity,
//                                   height: 19*fem,
//                                   decoration: BoxDecoration (
//                                     color: Color(0xffa50000),
//                                     borderRadius: BorderRadius.circular(15*fem),
//                                   ),
//                                   child: Text(
//                                     'Send ',
//                                     textAlign: TextAlign.center,
//                                     style: SafeGoogleFont (
//                                       'Poppins',
//                                       fontSize: 12*ffem,
//                                       fontWeight: FontWeight.w500,
//                                       height: 1.5*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }