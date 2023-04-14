import 'package:flutter/material.dart';

import '../profiling_module/userProfile_page.dart';
import '../trash/userProfile.dart';

class Contract extends StatefulWidget {
  static const String id = 'contract_screen';
  const Contract({Key? key}) : super(key: key);

  @override
  State<Contract> createState() => _ContractState();
}

class _ContractState extends State<Contract> {
  void navToUserProfile() {
    Navigator.pushNamed(context, UserProfile.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Contract",style: TextStyle(fontSize: 25.0),),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: InkWell(
            child: Container(
              width: 280.00,
              child:  Image(image: AssetImage("images/contract_icon.png")),),
          ),
        ),
      ]),
    ));
  }
}
