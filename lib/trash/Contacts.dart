// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import 'call_module/callPage.dart';
// import 'createContact.dart';
// import 'trash/createContract.dart';
// import 'profiling_module/userProfile_page.dart';
// import 'trash/userProfile.dart';
//
// class Contacts extends StatefulWidget {
//   static const String id = "contacts_screen";
//   const Contacts({Key? key}) : super(key: key);
//
//   @override
//   State<Contacts> createState() => _ContactsState();
// }
//
// class _ContactsState extends State<Contacts> {
//   final _auth = FirebaseAuth.instance;
//   final _firestore = FirebaseFirestore.instance;
//
//   late User loggedUser;
//   late List<dynamic> _challenges;
//   late List<String> _contactNames;
//   late Map<String, dynamic>? _docOfUser;
//
//   final CollectionReference _users = FirebaseFirestore.instance.collection('users');
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
//   void getUserData() async {
//     await for (var snapshot in _firestore.collection('users').snapshots()) {
//       for (var message in snapshot.docs) {
//         if (message.data()['email'] == loggedUser.email) {
//           // print(message.data()['contact_book']);
//           setState(() {
//             _docOfUser = message.data();
//             _challenges = message.data()['contact_book'];
//           });
//           print(_challenges);
//         }
//       }
//     }
//
//   }
//
//   void getContactsNames() async{
//
//     for(var contact in _challenges)
//     {
//     await _firestore.collection('users').where("number", isEqualTo: contact.text).get().then((value) {
//       setState(() {
//         _contactNames.add(value.docs[0].data()['name']);
//       });
//      });
//     }
//     print("=>>>>>>>>>>>>>>>.");
//     print(_contactNames);
//
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getLoggedUser();
//     getUserData();
//     // getContactsNames();
//   }
//
//   void navToUserProfile() {
//     Navigator.pushNamed(context, UserProfile.id);
//   }
//
//   @override
//   Widget build(BuildContext context)
//   {
//     final Size size = MediaQuery.of(context).size;
//
//   return Scaffold(
//     backgroundColor: Colors.black,
//     appBar: AppBar(
//       title: Text("Contacts",style: TextStyle(fontSize: 25.0),),
//       centerTitle: true,
//       backgroundColor: Color(0xFFF9AA33),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           bottom: Radius.circular(30),
//         ),
//       ),
//       actions: [
//         IconButton(
//           onPressed: navToUserProfile,
//           icon: Image.asset('images/profile_icon.jpg',
//               width: 60, height: 60),
//           padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
//         ),
//       ],
//     ),
//
//       //     Text("Contacts Here"),
//       //     Column(
//       //     children: _challenges.map((item) => new Text(item??"")).toList()
//       //   ),
//     body: ListView.builder(
//             itemCount: _challenges.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   const SizedBox(height: 10.0,),
//                   Card(
//                         elevation: 5.0,
//                         color: Colors.white60,
//                           child: Column(
//                             children: [
//                               const SizedBox(height : 15.0),
//                               Row(
//                                 children: [
//                                   Text("Person${index + 1}"),
//                                   const SizedBox(width : 15.0),
//                                   Text(_challenges?[index]),
//                                 ],
//                               ),
//                               const SizedBox(height : 15.0),
//                             ],
//                           ),
//                   ),
//                 ],
//               );
//             },
//         ),
//   );
//   }
// }
//
