import 'package:flutter/material.dart';
import 'package:joma/materials/assets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

// Runder Kasten als Klasse //

class RoundRecMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: AppColors().darkPrimaryColor,
            border: Border.all(
              width: 5,
              color: Colors.orangeAccent
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.zero,
              bottom: Radius.elliptical(550, 220),
            ),
          ),
        ),
        Container(
          height: 200-70,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: AppColors().darkPrimaryColor,
          ),
        )
      ],
    );
  }
}

// ENDE Runder Kasten als Klasse //

//--------------------- NUTZUNG
// Appbar kann genutzt werden durch den Auruf: AppBarMainArea();
// genutzt werden kann sie folgendermaßen:
// hier ein Beispielsweise

// class _ScreenTest extends State<ScreenTest> {
//   get title => null;
//   get color => null;
//   get bgColor => null;
//   get bgColorBar => null;

//   @override
//   Widget build(BuildContext context) {
//     return AppBarMainArea(
//       bgColor: AppBackgroundColors().darkBackground,
//       bgColorBar: AppColors().darkPrimaryColor,
//       color: AppColors().darkPrimaryColor,
//       title: 'Test hi',
//     );
//   }
// }

// AppBarMainArea - normale Appbar am beginn der App //

class AppBarMainArea extends StatelessWidget {
  final String title; // Titel der Seite in der AppBar
  final Color color; //
  final Color bgColor;
  final Color bgColorBar;



  AppBarMainArea({
    required this.title,
    required this.color,
    required this.bgColor,
    required this.bgColorBar,
  
  });

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
                      image: DecorationImage(
                        image: Svg("assets/images/darkLogo.svg"),
                        fit: BoxFit.contain,
                      ),
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
