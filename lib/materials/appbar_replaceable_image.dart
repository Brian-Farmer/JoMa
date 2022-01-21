import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:joma/materials/assets.dart';
import 'package:joma/screens/screen_settings.dart';

import 'appbar.dart';


class AppBarReplaceableImage extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Titel der Seite in der AppBar
  final Color color; //
  final Color bgColor;
  final Color bgColorBar;
  final DecorationImage bild;
  final double hoehe;




  AppBarReplaceableImage({
    required this.title,
    required this.color,
    required this.bgColor,
    required this.bgColorBar,
    required this.bild,
    required this.hoehe,


  });
  @override
  Size get preferredSize => Size.fromHeight(hoehe);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bgColor,
          body: Stack(
            //fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: 255,
                width: double.infinity,
                color: Colors.transparent,
              ),
              RoundRecMain(),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 4, color: AppColors().darkSecondaryColor),
                      image: bild,
                      //color: Colors.green,
                    ),
                    //child: AppLogo().darkLogo,
                  ),
                ),
              ),

              Positioned.fill(
                top: -100,
                //left: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: AppIcons().backArrow,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ),
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: AppIcons().settingsWheel,
                      onPressed: () {
                        Get.to(() => const Einstellungen());
                      },
                    )
                ),
              ),
            ],
          )),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(140, 80, 140, 0),
      child: AppLogo().darkLogo,
    );
  }
}

// ENDE ------ AppBarMainArea - normale Appbar am beginn der App //