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
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Contract Renewal'),
        backgroundColor: Colors.black,
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.person,
          //     size: 30,
          //   ),
          // ),
          // const SizedBox(width: 10),
          Container(
            // component75hFn (208:127)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 25 * fem, 0 * fem),
            padding:
            EdgeInsets.fromLTRB(15 * fem, 15 * fem, 15 * fem, 15 * fem),
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffffffff)),
              borderRadius: BorderRadius.circular(100 * fem),
              gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: <Color>[Color(0xff1b1a1a), Color(0x00d9d9d9)],
                stops: <double>[0, 1],
              ),
            ),
            child: Center(
              // groupxSc (I208:127;141:269)
              child: SizedBox(
                width: 18.53 * fem,
                height: 21.61 * fem,
                child: GestureDetector(
                  onTap: navToUserProfile,
                  child: Image.asset(
                    'assets/page-1/images/group-cyv.png',
                    width: 18.53 * fem,
                    height: 21.61 * fem,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: ListView.builder(
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return
              Padding(
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
