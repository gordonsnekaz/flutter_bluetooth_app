import 'package:bluetooth_app/one_bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllBluetoothPage extends StatelessWidget {
  final bluetoothName = <String>[
    'EA:16:7D:F1:20:B3',
    'EA:16:7D:F1:20:B3',
    'EA:16:7D:F1:20:B3',
    'EA:16:7D:F1:20:B3',
    'EA:16:7D:F1:20:B3',
  ];

  final bluetoothDistance = <String>[
    '-78',
    '-78',
    '-78',
    '-78',
    '-78',
  ];

  AllBluetoothPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg_all.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                    top: 30.0,
                    bottom: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "t",
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.bluetooth,
                            size: 32,
                            color: Color(
                              0xff0095E1,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Scanned Devices",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF)),
                          ),
                        ],
                      ),
                      const Text(
                        "t",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemCount: bluetoothName.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff006293),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OneBluetoothPage(),
                              ),
                            );
                          },
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0.0),
                            title: Column(
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            bluetoothName[index],
                                            style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xffFFFFFF)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            bluetoothDistance[index],
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xffFFFFFF)),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Icon(
                                            Icons.wifi,
                                            size: 18,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xff0095E1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
