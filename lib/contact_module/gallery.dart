import 'package:firebae_reg_auth/main.dart';
import 'package:flutter/material.dart';

import '../contract.dart';
import '../profiling_module/userProfile_page.dart';

class Gallery extends StatefulWidget {
  static const String id = 'gallery_screen';
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  void navToUserProfile() {
    Navigator.pushNamed(context, UserProfile.id);
  }

  void navToContract() {
    Navigator.pushNamed(context, Contract.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Gallery'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: ListView.builder(
            itemCount: 20,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 100,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white70)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.calendar_month, color: Colors.orange, size: 18),
                          SizedBox(width: 5),
                          Text(
                            '8-06-2022',

                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'ID $index',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Rental Agreement',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                          Text('{PDF}')
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
