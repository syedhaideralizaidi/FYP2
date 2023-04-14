import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'contact_module/dashboard_page.dart';
import 'trash/dashboardScreen.dart';
import 'loginScreen.dart';

class Register extends StatefulWidget {
  static const id = "register_screen";
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  // String name = "";
  // String phno = "";
  // String email = "";
  String password = "";
  bool _obscureText = true;

  final _email = TextEditingController();
  final _name = TextEditingController();
  final _phno = TextEditingController();
  final _password = TextEditingController();

  void navToLoginScreen() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
        controller: _name,
        autofocus: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
            hintText: "Name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final phnoField = TextFormField(
        controller: _phno,
        autofocus: false,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
            hintText: "Phno",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final emailField = TextFormField(
        controller: _email,
        autofocus: false,
        validator: (value) {
          if (value != null) {
            if (value.contains('@') && value.endsWith('.com')) {
              return null;
            }
            return 'Enter a Valid Email Address';
          }
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
            hintText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final passwordField = TextFormField(
        obscureText: _obscureText,
        controller: _password,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
          if (value.trim().length < 6) {
            return 'Password must be at least 6 characters in length';
          }
          // Return null if the entered password is valid
          return null;
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
            hintText: "Password",
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
            )));

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
        backgroundColor: Color(0xFFF9AA33),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nameField,
            SizedBox(
              height: 6.0,
            ),
            phnoField,
            SizedBox(
              height: 6.0,
            ),
            emailField,
            SizedBox(
              height: 6.0,
            ),
            passwordField,
            const SizedBox(
              height: 3.0,
            ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFFF9AA33),
              child: MaterialButton(
                padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
              onPressed: () async {
                  print(_name.text);
                  print(_email.text);
                  print(_phno.text);
                  print(_password.text);
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: _email.text, password: _password.text);
                  if (newUser != null) {
                    print("User registered");
                    _firestore.collection('users').add({
                      'email': _email.text,
                      'name': _name.text,
                      'number': _phno.text
                    });
                    // Navigator.pushNamed(context, DashBoard.id);
                    Navigator.pushNamed(context, DashboardPage.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text(
                'Register',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              ),
            ),
            TextButton(
                onPressed: navToLoginScreen,
                child: const Text('Have an account?'),),
          ],
        ),
      ),
    );
  }
}
