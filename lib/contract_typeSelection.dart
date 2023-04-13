import 'package:flutter/material.dart';

import 'previewContract.dart';
import 'profiling_module/userProfile_page.dart';
import 'trash/userProfile.dart';

class ContractTypeSelection extends StatefulWidget {
  static const String id = 'contract_type_selection_screen';
  const ContractTypeSelection({Key? key}) : super(key: key);

  @override
  State<ContractTypeSelection> createState() => _ContractTypeSelectionState();
}

class _ContractTypeSelectionState extends State<ContractTypeSelection> {

  void navToPreviewContract() {
    Navigator.pushNamed(context, PreviewContract.id);
  }

void navBackToDashboard(){
  Navigator.popUntil(context, ModalRoute.withName('dashboard_screen'));
}

  void navToUserProfile() {
    Navigator.pushNamed(context, UserProfile.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Contract Type",style: TextStyle(fontSize: 25.0),),
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
                ElevatedButton(onPressed: navToPreviewContract, child: Text("Proceed")),
                SizedBox(width: 40.0,),
                ElevatedButton(onPressed: navBackToDashboard, child: Text("Cancel Contract")),
              ],
            ),
          ),
        );
  }
}
