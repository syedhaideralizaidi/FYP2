// import 'package:flutter/material.dart';
//
// import 'contract.dart';
// import 'profiling_module/userProfile_page.dart';
// import 'userProfile.dart';
//
// class Gallery extends StatefulWidget {
//   static const String id = 'gallery_screen';
//   const Gallery({Key? key}) : super(key: key);
//
//   @override
//   State<Gallery> createState() => _GalleryState();
// }
//
// class _GalleryState extends State<Gallery> {
//   void navToUserProfile() {
//     Navigator.pushNamed(context, UserProfile.id);
//   }
//
//   void navToContract() {
//     Navigator.pushNamed(context, Contract.id);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.black,
//           appBar: AppBar(
//             title: Text("Gallery",style: TextStyle(fontSize: 25.0),),
//             centerTitle: true,
//             backgroundColor: Color(0xFFF9AA33),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(30),
//               ),
//             ),
//             actions: [
//               IconButton(
//                 onPressed: navToUserProfile,
//                 icon: Image.asset('images/profile_icon.jpg',
//                     width: 60, height: 60),
//                 padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
//               ),
//             ],
//           ),
//       body: Column(
//           children: [
//
//             InkWell(
//               child: Container(
//                  height: 125.00,
//                 child:  Image(image: AssetImage("images/contract_card_icon.png")),),
//               onTap: navToContract,
//             ),
//             InkWell(
//               child: Container(
//                 height: 125.00,
//                 child:  Image(image: AssetImage("images/contract_card_icon.png")),),
//               onTap: navToContract,
//             ),
//             InkWell(
//               child: Container(
//                 height: 125.00,
//                 child:  Image(image: AssetImage("images/contract_card_icon.png")),),
//               onTap: navToContract,
//             ),
//             InkWell(
//               child: Container(
//                 height: 125.00,
//                 child:  Image(image: AssetImage("images/contract_card_icon.png")),),
//               onTap: navToContract,
//             ),
//       ]),
//     ));
//   }
// }
