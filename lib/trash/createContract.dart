// import 'package:firebae_reg_auth/main.dart';
// import 'package:flutter/material.dart';
//
// import 'contract_typeSelection.dart';
// import 'profiling_module/userProfile_page.dart';
// import 'trash/userProfile.dart';
//
// class CreateContract extends StatefulWidget {
//   static const String id = 'createcontact_screen';
//   const CreateContract({Key? key}) : super(key: key);
//
//   @override
//   State<CreateContract> createState() => _CreateContractState();
// }
//
// class _CreateContractState extends State<CreateContract> {
//
//   void navBackToDashboard() {
//     Navigator.pop(context);
//   }
//
//   void navToContractTypeSelection() {
//     Navigator.pushNamed(context, ContractTypeSelection.id);
//   }
//
//   void navToUserProfile() {
//     Navigator.pushNamed(context, UserProfile.id);
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.black,
//           appBar: AppBar(
//             title: Text("Create Contract",style: TextStyle(fontSize: 25.0),),
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
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//               ElevatedButton(onPressed: navToContractTypeSelection, child: Text("Create New Contract")),
//               SizedBox(width: 40.0,),
//               ElevatedButton(onPressed: navBackToDashboard, child: Text("Cancel Contract")),
//           ],
//         ),
//       ),
//     ));
//   }
// }
