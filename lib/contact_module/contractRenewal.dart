import 'package:firebae_reg_auth/main.dart';
import 'package:flutter/material.dart';

import '../profiling_module/userProfile_page.dart';
import '../trash/userProfile.dart';

class ContractRenewal extends StatefulWidget {
  static const String id = 'contract_renewal_screen';
  const ContractRenewal({Key? key}) : super(key: key);

  @override
  State<ContractRenewal> createState() => _ContractRenewalState();
}

class _ContractRenewalState extends State<ContractRenewal> {
  void navToUserProfile() {
    Navigator.pushNamed(context, UserProfile.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Contract Renewal'),
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
                height: 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID $index',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Rental Agreement',
                          style: TextStyle(color: Colors.tealAccent),
                        ),
                      ],
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Text(
                          'Accept',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
