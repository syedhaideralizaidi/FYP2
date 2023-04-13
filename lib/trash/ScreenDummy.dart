// import 'package:flutter/material.dart';
// import 'dart:math' as math;
//
// class Iphone1419Widget extends StatefulWidget {
//   static const String id = 'new_screen';
//
//   @override
//   _Iphone1419WidgetState createState() => _Iphone1419WidgetState();
// }
//
// class _Iphone1419WidgetState extends State<Iphone1419Widget> {
//   @override
//   Widget build(BuildContext context) {
//     // Figma Flutter Generator Iphone1419Widget - FRAME
//
//     return Container(
//         width: 390,
//         height: 844,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//           color : Color.fromRGBO(17, 17, 17, 1),
//         ),
//         child: Stack(
//             children: <Widget>[
//               Positioned(
//                   top: -94.5999984741211,
//                   left: -432.280029296875,
//                   child: Transform.rotate(
//                     angle: 4.47999975015418 * (math.pi / 180),
//                     child: Container(
//                         width: 869.5868530273438,
//                         height: 288.54156494140625,
//                         decoration: BoxDecoration(
//                           borderRadius : BorderRadius.all(Radius.elliptical(869.5868530273438, 288.54156494140625)),
//                         )
//                     ),
//                   )
//               ),Positioned(
//                   top: 48,
//                   left: 342,
//                   child: Container(
//                       width: 36,
//                       height: 36,
//                       decoration: BoxDecoration(
//                         border : Border.all(
//                           color: Color.fromRGBO(179, 179, 179, 1),
//                           width: 1,
//                         ),
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/Ellipse2.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                         borderRadius : BorderRadius.all(Radius.elliptical(36, 36)),
//                       )
//                   )
//               ),Positioned(
//                   top: 54,
//                   left: 12,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(255, 255, 255, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 10,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 6,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 14,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 18,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),Positioned(
//                   top: 681,
//                   left: 12,
//                   child: Container(
//                       width: 177,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         borderRadius : BorderRadius.only(
//                           topLeft: Radius.circular(100),
//                           topRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                           bottomRight: Radius.circular(100),
//                         ),
//                         boxShadow : [BoxShadow(
//                             color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
//                             offset: Offset(0,5),
//                             blurRadius: 10
//                         )],
//                         color : Color.fromRGBO(73, 74, 77, 1),
//                       )
//                   )
//               ),Positioned(
//                   top: 681,
//                   left: 201,
//                   child: Container(
//                       width: 177,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         borderRadius : BorderRadius.only(
//                           topLeft: Radius.circular(100),
//                           topRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                           bottomRight: Radius.circular(100),
//                         ),
//                         boxShadow : [BoxShadow(
//                             color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
//                             offset: Offset(0,5),
//                             blurRadius: 10
//                         )],
//                         color : Color.fromRGBO(255, 153, 36, 1),
//                       )
//                   )
//               ),Positioned(
//                   top: 697,
//                   left: 67,
//                   child: Text('Sign Up', textAlign: TextAlign.left, style: TextStyle(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       fontFamily: 'Inter',
//                       fontSize: 18,
//                       letterSpacing: 0 /percentages not used in flutter. defaulting to zero/,
//                       fontWeight: FontWeight.normal,
//                       height: 1
//                   ),)
//               ),Positioned(
//                   top: 425,
//                   left: 98,
//                   child: Text('Welcome to Peto', textAlign: TextAlign.left, style: TextStyle(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       fontFamily: 'Helvetica',
//                       fontSize: 24,
//                       letterSpacing: 0 /percentages not used in flutter. defaulting to zero/,
//                       fontWeight: FontWeight.normal,
//                       height: 1
//                   ),)
//               ),Positioned(
//                   top: 697,
//                   left: 263,
//                   child: Text('Log In', textAlign: TextAlign.left, style: TextStyle(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       fontFamily: 'Inter',
//                       fontSize: 18,
//                       letterSpacing: 0 /percentages not used in flutter. defaulting to zero/,
//                       fontWeight: FontWeight.normal,
//                       height: 1
//                   ),)
//               ),Positioned(
//                   top: 278,
//                   left: 100,
//                   child: Container(
//                       width: 189,
//                       height: 125,
//                       decoration: BoxDecoration(
//                         image : DecorationImage(
//                             image: AssetImage('assets/images/4501.png'),
//                             fit: BoxFit.fitWidth
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 774,
//                   left: 0,
//                   child: Container(
//                       width: 390,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         borderRadius : BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20),
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20),
//                         ),
//                         color : Color.fromRGBO(40, 41, 42, 0.10000000149011612),
//                         border : Border.all(
//                           color: Color.fromRGBO(177, 208, 255, 1),
//                           width: 1,
//                         ),
//                       )
//                   )
//               ),Positioned(
//                   top: 797,
//                   left: 260,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(178, 254, 130, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 2,
//                                 left: 11,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 2,
//                                 left: 2,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),Positioned(
//                   top: 797,
//                   left: 105,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(2, 228, 190, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 2,
//                                 left: 2,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 14,
//                                 left: 2,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 6,
//                                 left: 6,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 18,
//                                 left: 6,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),Positioned(
//                   top: 797,
//                   left: 182,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(179, 179, 179, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 15,
//                                 left: 1,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 3,
//                                 left: 4.5,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 9,
//                                 left: 17,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),Positioned(
//                   top: 797,
//                   left: 338,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(255, 255, 255, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 4,
//                                 left: 1,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 10,
//                                 left: 1,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),Positioned(
//                   top: 774.5,
//                   left: 260,
//                   child: SvgPicture.asset(
//                       'assets/images/vector1.svg',
//                       semanticsLabel: 'vector1'
//                   );
//               ),Positioned(
//                   top: 797,
//                   left: 28,
//                   child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color : Color.fromRGBO(179, 179, 179, 1),
//                       ),
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 2,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 12,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),Positioned(
//                                 top: 5,
//                                 left: 3,
//                                 child: SvgPicture.asset(
//                                     'assets/images/vector.svg',
//                                     semanticsLabel: 'vector'
//                                 );
//                             ),
//                           ]
//                       )
//                   )
//               ),
//             ]
//         )
//     );
//   }
// }