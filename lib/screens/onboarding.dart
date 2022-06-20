import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:now_ui_flutter/constants/Theme.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgs/2.jpeg"),
                    fit: BoxFit.cover))),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: MediaQuery.of(context).size.height * 0.15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [

                    SizedBox(height: 20),
                    Container(
                        child: Center(
                            child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text("Lakukan Dengan ",
                                    style: TextStyle(
                                        color: NowUIColors.white,
                                        fontWeight: FontWeight.w600)))),
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text("Flutter",
                                  style: TextStyle(
                                      color: NowUIColors.white,
                                      fontWeight: FontWeight.w600)),
                            ))
                      ],
                    ))),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Designed By : El Van Haz",
                            style: TextStyle(
                                color: NowUIColors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.3)),
                        SizedBox(width: 5.0),

                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Coded By : El Van Haz",
                            style: TextStyle(
                                color: NowUIColors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.3)),
                        SizedBox(width: 10.0),

                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      textColor: NowUIColors.white,
                      color: NowUIColors.info,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16, bottom: 16),
                          child: Text("Mulai Sekarang",
                              style: TextStyle(fontSize: 12.0))),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}