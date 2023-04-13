import 'package:flutter/material.dart';

import 'profiling_module/userProfile_page.dart';
import 'trash/userProfile.dart';

class PreviewContract extends StatefulWidget {
  static const String id = 'preview_contract_screen';
  const PreviewContract({Key? key}) : super(key: key);

  @override
  State<PreviewContract> createState() => _PreviewContractState();
}

class _PreviewContractState extends State<PreviewContract> {

  void navBackToDashboard(){
    Navigator.popUntil(context, ModalRoute.withName('dashboard_screen'));
  }

  void navToDashboard(){
    Navigator.popUntil(context, ModalRoute.withName('dashboard_screen'));
  }

  void navToUserProfile() {
    Navigator.pushNamed(context, UserProfile.id);
  }

  void navToEditContract() {
    Navigator.popUntil(context, ModalRoute.withName('dashboard_screen'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Preview Contract",style: TextStyle(fontSize: 25.0),),
            centerTitle: true,
            backgroundColor: Color(0xFFF9AA33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            actions: [
              IconButton(
                onPressed: navToUserProfile,
                icon: Image.asset('images/profile_icon.jpg',
                    width: 60, height: 60),
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
              ),
            ],
          ),
          body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              ElevatedButton(onPressed: navToDashboard, child: Text("Sign")),
              SizedBox(width: 40.0,),
                  ElevatedButton(onPressed: navToEditContract, child: Text("Edit")),
                  SizedBox(width: 40.0,),
              ElevatedButton(onPressed: navBackToDashboard, child: Text("Cancel Contract")),
            ]),
          ),
        );
  }
}
