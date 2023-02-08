import 'dart:async';

import 'package:flutter/material.dart';
import 'package:store/Screen/Login.dart';
import 'package:store/utility/colors.dart';

class SPlash extends StatefulWidget {
  const SPlash({super.key});

  @override
  State<SPlash> createState() => _SPlashState();
}

class _SPlashState extends State<SPlash> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 15), (timer) {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => Login(),
  //         ));
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color(colorconst.primary_color),
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/Images/Logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 5, 1),
                      child: Text(
                        "Get Ready",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(colorconst.primary_color)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
                      child: Text(
                        "GET READY BE HIGYENIC",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(colorconst.primary_color)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 5, 5),
                      child: Text(
                        "Jelajahi AiLearn untuk menambah kemampuanmu",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(colorconst.primary_color)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 2, 5, 5),
                      child: Text(
                        "dalam mengoperasikan Adobe Illustrator",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(colorconst.primary_color)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 5, 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(colorconst.primary_color)),
                      child: Text("Get Started"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
