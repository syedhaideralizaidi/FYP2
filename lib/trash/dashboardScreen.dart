// import 'package:firebae_reg_auth/profiling_module/userProfile_page.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// import 'call_module/callPage.dart';
// import 'contact_module/dashboard_page.dart';
// import 'contact_module/gallery.dart';
// import 'contacts.dart';
// import 'contractRenewal.dart';
// import 'contractRequest.dart';
// import 'createContact.dart';
// import 'createContract.dart';
// import 'trash/gallery.dart';
// import 'trash/userProfile.dart';
//
// class DashBoard extends StatefulWidget {
//   static const String id = 'dashboard_screen';
//   const DashBoard({Key? key}) : super(key: key);
//
//   @override
//   State<DashBoard> createState() => _DashBoardState();
// }
//
// class _DashBoardState extends State<DashBoard> {
//   final _auth = FirebaseAuth.instance;
//   late User loggedUser;
//
//   @override
//   void initState() {
//     getLoggedUser();
//   }
//
//   void getLoggedUser() async {
//     try {
//       final checkLoggedUser = await _auth.currentUser;
//       if (checkLoggedUser != null) {
//         loggedUser = checkLoggedUser;
//         print("Current User: ");
//         print(loggedUser.email);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   void signoutFtn() async {
//     await _auth.signOut();
//     print("Logging Out");
//     Navigator.pop(context);
//   }
//
//   void navToUserProfile() {
//     Navigator.pushNamed(context, UserProfile.id);
//   }
//
//   void navToGallery() {
//     Navigator.pushNamed(context, Gallery.id);
//   }
//
//   void navToContactBook() {
//     Navigator.pushNamed(context, Contacts.id);
//   }
//
//
//   void navToContractRequests() {
//     Navigator.pushNamed(context, ContractRequest.id);
//   }
//
//   void navToContractRenewal() {
//     Navigator.pushNamed(context, ContractRenewal.id);
//   }
//
//   void navToCallPage(){
//     Navigator.pushNamed(context, CallInvitationPage.id);
//   }
//   void navToCreateContract() {
//     Navigator.pushNamed(context, CreateContract.id);
//   }
//
//   void navToCreateContact() {
//     Navigator.pushNamed(context, CreateContact.id);
//   }
//   // void navToNewDash() {
//   //   Navigator.pushNamed(context, DashboardPage.id);
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: Text("Dashboard",style: TextStyle(fontSize: 25.0),),
//           centerTitle: true,
//           backgroundColor: Color(0xFFF9AA33),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(30),
//             ),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//             onPressed: signoutFtn,
//           ),
//           actions: [
//             IconButton(
//               onPressed: navToUserProfile,
//               icon: Image.asset('images/profile_icon.jpg',
//                   width: 60, height: 60),
//               padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
//             ),
//           ],
//         ),
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                     Column(
//                       children: [
//                         const SizedBox(height: 20.0,),
//                         InkWell(
//                           child: Container(
//                             width: 125.00, height: 125.00,
//                             child:  Image(image: AssetImage("images/gallery_icon.png")),),
//                           onTap: navToGallery,
//                         ),
//                         TextButton(onPressed: navToGallery,
//                           child: const Text('Gallery',style: TextStyle(fontSize: 25)),
//                         ),
//
//                         InkWell(
//                           child: Container(
//                             width: 125.00, height: 125.00,
//                             child:  Image(image: AssetImage("images/contract_requests_icon.png")),),
//                           onTap: navToContractRequests,
//                         ),
//                         TextButton(onPressed: navToContractRequests,
//                           child: const Text('Contract\nRequests',style: TextStyle(fontSize: 25)),
//                         ),
//
//                       ],
//                     ),
//                     const SizedBox(width: 30.0,),
//                     Column(
//                       children: [
//                         const SizedBox(height: 20.0,),
//                         InkWell(
//                           child: Container(
//                             width: 125.00, height: 125.00,
//                             child:  Image(image: AssetImage("images/contacts_icon.png")),),
//                           onTap: navToContactBook,
//                         ),
//                         TextButton(onPressed: navToContactBook,
//                           child: const Text('Contacts',style: TextStyle(fontSize: 25)),
//                         ),
//
//                         InkWell(
//                           child: Container(
//                             width: 125.00, height: 125.00,
//                             child:  Image(image: AssetImage("images/contract_renewal_icon.png")),),
//                           onTap: navToContractRenewal,
//                         ),
//                         TextButton(onPressed: navToContractRenewal,
//                           child: const Text('Contract\nRenewal',style: TextStyle(fontSize: 25)),
//                         ),
//                       ],
//                     ),
//               ],
//             ),
//             SizedBox(height: 40.0,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center
//               ,
//               children: [
//               ElevatedButton(
//                   onPressed: navToCreateContact, child: Text("Create Contact")),
//               SizedBox(width: 10.0,),
//               ElevatedButton(
//                   onPressed: navToCreateContract,
//                   child: Text("Create Contract")),
//               SizedBox(width: 10.0,),
//
//               ElevatedButton(
//                   onPressed: navToCallPage, child: Text("Call")),
//             ],),
//             // ElevatedButton(
//             //     onPressed: navToNewDash, child: Text("NewDash")),
//           ],
//         ),
//     );
//   }
// }