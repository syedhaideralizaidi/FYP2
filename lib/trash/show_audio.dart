//
// import 'package:flutter/material.dart';
// import '../contract_creation_module/create_contract_page.dart';
// import 'audio_player.dart';
//
// class ShowAudio extends StatefulWidget {
//   static const String id = "audio_player_page";
//   bool showPlayer;
//   String? audioPath;
//   ShowAudio({Key? key, required this.showPlayer, required this.audioPath}) : super(key: key);
//
//   @override
//   State<ShowAudio> createState() => _ShowAudioState();
// }
//
// class _ShowAudioState extends State<ShowAudio> {
//
//   void navToContractCreation(){
//     Navigator.pushNamed(context, CreateContract.id);
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Center(
//         child : Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Column(
//           children: [
//             AudioPlayer(
//               source: widget.audioPath!,
//               onDelete: () {
//                 setState(() => widget.showPlayer = false);
//                 Navigator.pop(context, widget.showPlayer);
//               },
//             ),
//             ElevatedButton(onPressed: navToContractCreation, child: Text("Next"))
//           ],
//         ),
//       )
//        ),
//     );
//   }
// }
