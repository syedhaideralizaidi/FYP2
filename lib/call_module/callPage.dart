import 'dart:developer';
import 'dart:math' as math;
import 'dart:async';
// Flutter imports:
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebae_reg_auth/createContract.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:flutter/foundation.dart';
import '../contract_creation_module/create_contract_page.dart';
import '../contract_creation_module/audio_player.dart';
// Package imports:
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
import 'audio_recorder.dart';
// import 'dummy.dart';
import '../trash/show_audio.dart';
// import 'main.dart';

/// Note that the userID needs to be globally unique,
// final String localUserID = math.Random().nextInt(10000).toString();

// final String localUserID = "03135153425";

// late String iddd;
// final String localUserID = "03123456789";
// final String localUserID = "03350501183";

class RecordingStarter extends StatefulWidget {
  bool recordingOn = false;
  bool showPlayer = false;
  String? Audiopath;
  RecordingStarter({Key? key, required recordingOn, required showPlayer, required Audiopath }) : super(key: key);

  @override
  State<RecordingStarter> createState() => _RecordingStarterState();
}

class _RecordingStarterState extends State<RecordingStarter> {

  // void navToShowAudio() {
  //   // Navigator.pushNamed(context,ShowAudio.id);
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => ShowAudio(showPlayer: widget.showPlayer, audioPath: widget.Audiopath,),
  //     ),
  //   );
  // }

  void navToShowAudio() {
    // Navigator.pushNamed(context,ShowAudio.id);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateContract(showPlayer: widget.showPlayer, audioPath: widget.Audiopath,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AudioRecorder(
        onStop: (path) {
          if (kDebugMode) print('Recorded file path: $path');
          setState(() {
            widget.Audiopath = path;
            widget.showPlayer = true;
            widget.recordingOn = false;
          });
          navToShowAudio();
        },
      ),
    );
  }
}


class CallInvitationPage extends StatefulWidget {
  static const String id = "call_page";
  bool recordingOn;
String otherPersonNumber;
String yourUserID;
  CallInvitationPage({Key? key, required this.recordingOn, required this.otherPersonNumber, required this.yourUserID}) : super(key: key);

  @override
  State<CallInvitationPage> createState() => _CallInvitationPageState();
}

class _CallInvitationPageState extends State<CallInvitationPage> {

  bool showPlayer = false;
  String? Audiopath;
  final TextEditingController inviteeUsersIDTextCtrl = TextEditingController();

  bool _callEnded = false;

  int _recordDuration = 0;
  Timer? _timer;
  final _audioRecorder = Record();
  StreamSubscription<RecordState>? _recordSub;
  RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;
  Amplitude? _amplitude;

  final _auth = FirebaseAuth.instance;
  late User loggedUser;
  final _firestore = FirebaseFirestore.instance;
  // late String? _challenges;
  late List<String?> _contactNames;
  late Map<String, dynamic>? _docOfUser;

  @override
  void initState() {
    getLoggedUser();
    // getUserData();
    // getContactsNames();
    Audiopath = "";
    showPlayer = false;
    _callEnded = false;

    // iddd = _challenges! ;

    _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
      setState(() => _recordState = recordState);
    });
    _amplitudeSub = _audioRecorder
        .onAmplitudeChanged(const Duration(milliseconds: 300))
        .listen((amp) => setState(() => _amplitude = amp));

    super.initState();
  }


  void getLoggedUser() async {
    try {
      final checkLoggedUser = await _auth.currentUser;
      if (checkLoggedUser != null) {
        loggedUser = checkLoggedUser;
        print("Current User: ");
        print(loggedUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  // void getUserData() async {
  //   await for (var snapshot in _firestore.collection('users').snapshots()) {
  //     for (var message in snapshot.docs) {
  //       if (message.data()['email'] == loggedUser.email) {
  //         // print(message.data()['contact_book']);
  //         setState(() {
  //           _docOfUser = message.data();
  //           _challenges = message.data()['number'];
  //         });
  //         print(_challenges);
  //       }
  //     }
  //   }
  //
  // }

  // void getContactsNames() async{
  //
  //   for(var contact in _challenges)
  //   {
  //     await _firestore.collection('users').where("number", isEqualTo: contact.text).get().then((value) {
  //       setState(() {
  //         _contactNames.add(value.docs[0].data()['name']);
  //       });
  //     });
  //   }
  //   print("=>>>>>>>>>>>>>>>.");
  //   print(_contactNames);
  //
  // }


  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        // We don't do anything with this but printing
        final isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacLc.name} supported: $isSupported');
        }
        // final tempDir = await getTemporaryDirectory();
        final tempDir = await getExternalStorageDirectory();
        print(tempDir?.path);
        Audiopath = '${tempDir?.path}/temp_recording.mp3';


        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();

        await _audioRecorder.start(
          path: Audiopath,
        );
        _recordDuration = 0;

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    _recordDuration = 0;

    final path = await _audioRecorder.stop();

    if (path != null) {
      // widget.onStop(path);
      if (kDebugMode) print('Recorded file path: $Audiopath');
      setState(() {
        // Audiopath = path;
        showPlayer = true;
        widget.recordingOn = false;
      });
      navToShowAudio();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  @override
  Widget build(BuildContext context) {

    // if(_callEnded == true){
    //   navToShowAudio();
    // }

    return ZegoUIKitPrebuiltCallWithInvitation(
      appID: 1407480931,
      appSign: "93493cd126b97b85e5df6df7a5c9b7cfbbb1fbbd854d1a9ee0bb5a70d71dfe09",
      userID: widget.yourUserID,
      userName: "user_${widget.yourUserID}",
      plugins: [ZegoUIKitSignalingPlugin()],
      child: yourPage(context),

      requireConfig: (ZegoCallInvitationData invitationData) {
        return ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
          ..onHangUp = (){
            print('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH');
            // setState(() {
            // _callEnded = true;
            // });
            _stop();
          };
      },
    );
  }

  Widget yourPage(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text('Your userID: $localUserID'),
              Text('Your userID:${widget.yourUserID}'),
              Text(widget.otherPersonNumber),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  // Container(
                  //   width: 150, // or any fixed width
                  //   height: 100, // or any fixed height
                  //   child: inviteeUserIDInput(),
                  // ),
                  const SizedBox(height: 5),
                  callButton(false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navToShowAudio() {
    print(
        'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHeeeeeeeeeeeeeeeeeeeeeeeeeee');
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // add your code here.

      Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) =>
                CreateContract(
                  showPlayer: showPlayer, audioPath: Audiopath,),));
    });
  }


  //   void navToShowAudio() {
  //
  //   print('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHeeeeeeeeeeeeeeeeeeeeeeeeeee');
  //   SchedulerBinding.instance.addPostFrameCallback((_) {
  //
  //     // add your code here.
  //
  //     Navigator.push(
  //         context,
  //         new MaterialPageRoute(
  //           builder: (context) => ShowAudio(showPlayer: showPlayer, audioPath: Audiopath,),));
  //   });
  //
  //
  //   // Navigator.push(
  //   //   context,
  //   //   MaterialPageRoute(
  //   //     builder: (context) => ShowAudio(showPlayer: showPlayer, audioPath: Audiopath,),
  //   //   ),
  //   // );
  // }
/**/
  // Widget inviteeUserIDInput() {
  //   return Expanded(
  //     child: TextFormField(
  //       controller: inviteeUsersIDTextCtrl,
  //       inputFormatters: [
  //         FilteringTextInputFormatter.allow(RegExp('[0-9,]')),
  //       ],
  //       decoration: const InputDecoration(
  //         isDense: true,
  //         hintText: "Please Enter Invitees ID",
  //         labelText: "Invitees ID, Separate ids by ','",
  //       ),
  //     ),
  //   );
  // }

  Widget callButton(bool isVideoCall) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: inviteeUsersIDTextCtrl,
      builder: (context, inviteeUserID, _) {
        // var invitees = getInvitesFromTextCtrl(inviteeUsersIDTextCtrl.text);
        var invitees = getInvitesFromTextCtrl(widget.otherPersonNumber);
        return ZegoStartCallInvitationButton(
          isVideoCall: isVideoCall,
          invitees: invitees,
          iconSize: const Size(40, 40),
          buttonSize: const Size(50, 50),
          onPressed: (String code, String message, List<String> errorInvitees) {

            _start();
            if (errorInvitees.isNotEmpty) {
              String userIDs = "";
              for (int index = 0; index < errorInvitees.length; index++) {
                if (index >= 5) {
                  userIDs += '... ';
                  break;
                }

                var userID = errorInvitees.elementAt(index);
                userIDs += userID + ' ';
              }
              if (userIDs.isNotEmpty) {
                userIDs = userIDs.substring(0, userIDs.length - 1);
              }

              var message = 'User doesn\'t exist or is offline: $userIDs';
              if (code.isNotEmpty) {
                message += ', code: $code, message:$message';
              }
              showToast(
                message,
                position: StyledToastPosition.top,
                context: context,
              );
            } else if (code.isNotEmpty) {
              showToast(
                'code: $code, message:$message',
                position: StyledToastPosition.top,
                context: context,
              );
            }

          },
        );
      },
    );
  }

  List<ZegoUIKitUser> getInvitesFromTextCtrl(String textCtrlText) {
    List<ZegoUIKitUser> invitees = [];
    // var inviteeIDs = textCtrlText.trim().replaceAll('，', '');
    // inviteeIDs.split(",").forEach((inviteeUserID) {
    //   if (inviteeUserID.isEmpty) {
    //     return;
    //   }
    //
    //   invitees.add(ZegoUIKitUser(
    //     id: inviteeUserID,
    //     name: 'user_$inviteeUserID',
    //   ));
    // });

    invitees.add(ZegoUIKitUser(
      id: textCtrlText,
      name: 'user_$textCtrlText',
    ));

    return invitees;
  }


}
