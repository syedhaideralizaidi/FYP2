import 'package:firebae_reg_auth/main.dart';
import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  static const String id = 'create_contact_screen';

  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {

  void navBackToDashboard(){
    Navigator.pop(context);
  }

  void navToDashboard(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Create Contact"),
          centerTitle: true,
          backgroundColor: Color(0xFFF9AA33),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            ElevatedButton(onPressed: navToDashboard, child: Text("Save")),
            SizedBox(width: 20.0,),
            ElevatedButton(onPressed: navBackToDashboard, child: Text("Cancel")),
          ]),
        ),
    );
  }
}
