// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class UserProfile extends StatefulWidget {
//   static const String id = "user_profile_screen";
//   const UserProfile({Key? key}) : super(key: key);
//
//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }
//
// class _UserProfileState extends State<UserProfile> {
//   final _auth = FirebaseAuth.instance;
//   final _firestore = FirebaseFirestore.instance;
//   late User loggedUser;
//   String? name = '';
//   String? phno = '';
//   String? email = '';
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
//     await for (var snapshot in _firestore.collection('users').snapshots()){
//       for(var message in snapshot.docs){
//         if(message.data()['email'] == loggedUser.email)
//           {
//             print(message.data()['email'] + "  " + message.data()['name'] + "   " + message.data()['number']);
//             setState((){
//               name = message.data()['name'];
//               email = message.data()['email'];
//               phno = message.data()['number'];
//             });
//           }
//       }
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getLoggedUser();
//     // _getdata();
//     getUserData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("Profile",style: TextStyle(fontSize: 25.0),),
//         centerTitle: true,
//         backgroundColor: Color(0xFFF9AA33),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Card(
//             margin: const EdgeInsets.all(10),
//             color: Color(0x69F0AEFD),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                   Column(children: [
//                     const SizedBox(height: 20.0),
//                     Text("Name :", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),),
//                     const SizedBox(height: 20.0),
//                     Text("Email :", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),),
//                     const SizedBox(height: 20.0),
//                     Text("Number :", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),),
//                     const SizedBox(height: 20.0),
//                   ],
//                   ),
//
//                 Column(children: [
//                   const SizedBox(height: 20.0),
//                   Text(name!, style: TextStyle(fontSize: 20.0),),
//                   const SizedBox(height: 20.0),
//                   Text(email!, style: TextStyle(fontSize: 20.0),),
//                   const SizedBox(height: 20.0),
//                   Text(phno!, style: TextStyle(fontSize: 20.0),),
//                   const SizedBox(height: 20.0),
//                 ],
//                 ),
//
//                 ],
//             ),
//
//           )
//
//         ],
//
//       ),
//     );
//   }
// }
//
//
// // void _getdata() async {
// //   await _firestore.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get().then((snapshot) async {
// //     if(snapshot.exists)
// //       {
// //         print("mill giyh");
// //   //      setState((){
// //   //        name = snapshot.data()!['name'];
// //   //        email = snapshot.data()!['email'];
// //   //        phno = snapshot.data()!['phno'];
// //   //
// //   // });
// //       }
// //     else{
// //       print("nhi milla");
// //     }
// //   });
// // }
