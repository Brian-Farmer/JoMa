import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:joma/controllers/view_controller.dart';
import 'package:joma/materials/button.dart';
import 'package:joma/screens/joblist_search_screen.dart';
import 'package:joma/screens/screen_profil_loader.dart';
import 'package:joma/screens/screen_settings.dart';
import 'joblist_topic_screen.dart';
import 'package:joma/materials/assets.dart';
import 'package:joma/materials/homescreen_card.dart';
import 'package:joma/materials/navbar.dart';

class ScreenHome extends StatelessWidget {
  final ViewController viewController = Get.put(ViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Center(
          child: Text(
            'JOMA',
            textAlign: TextAlign.center,
            style: AppTextStyles.darkH1,
          ),
        ),
        actions: [
          IconButton(
            icon: AppIcons().settingsWheel,
            onPressed: () {
              Get.to(() => const Einstellungen());
            },
          )
        ],
        //backgroundColor: const Color.fromRGBO(129, 129, 129, 1),
      ),
      extendBodyBehindAppBar: true,
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Center(
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(45 / 360),
                  alignment: const Alignment(-0.5, 1.5),
                  child: Center(
                    child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Flexible(
                                  child: GestureDetector(
                                    onTap: () {
                                      //Get.to(JobListTopicScreen());
                                      Get.to(() => JobListTopicScreen());

                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppColors().darkRed,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Container(
                                          width: 60.0,
                                          height: 60.0,
                                          child: const RotationTransition(
                                            turns: AlwaysStoppedAnimation(-45 / 360),
                                            child: Text(
                                              "TECHNIK\nHANDWERK",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1),
                            ),
                            Center(
                              child: Flexible(
                                  child: GestureDetector(
                                    onTap: () {
                                      //Get.to(JobListTopicScreen());
                                      Get.to(() => JobListTopicScreen());
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppColors().darkGreen,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Container(
                                          width: 60.0,
                                          height: 60.0,
                                          child: const RotationTransition(
                                            turns: AlwaysStoppedAnimation(-45 / 360),
                                            child: Text(
                                              "GÄRTNEREI\nLANDWIRTSCHAFT",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1),
                            ),
                          ],
                        ),
                        flex: 1),
                  ),
                ),
              ),

              Center(
                child: RotationTransition(
                  turns:  const AlwaysStoppedAnimation(45 / 360),
                  alignment: const Alignment(-0.5, -0.5),
                  child: Center(
                    child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Flexible(
                                child: GestureDetector(
                                  onTap: () {
                                    //Get.to(JobListTopicScreen());
                                    Get.to(() => JobListTopicScreen());

                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: AppColors().darkBlue,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        width: 60.0,
                                        height: 60.0,
                                        child: const RotationTransition(
                                          turns: AlwaysStoppedAnimation(-45 / 360),
                                          child: Text(
                                            "SOZIALES\nHAUSWIRTSCHAFT",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                  flex: 1),
                            ),
                            Center(
                              child: Flexible(
                                  child: GestureDetector(
                                    onTap: () {
                                      //Get.to(JobListTopicScreen());
                                      Get.to(() => JobListTopicScreen());
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppColors().darkYellow,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Container(
                                          width: 60.0,
                                          height: 60.0,
                                          child: const RotationTransition(
                                            turns: AlwaysStoppedAnimation(-45 / 360),
                                            child: Text(
                                              "SERVICE\nLEBENSMITTEL",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1),
                            ),
                          ],
                        ),
                        flex: 1),
                  ),
                ),
              ), */
              Stack(children: [
                Container(
                  alignment: Alignment.center,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: HomeScreenCard(
                                elevatedButtonRoute: () {
                                  Get.to(() => JobListTopicScreen());
                                },
                                color: AppColors().darkRed,
                                icon: Icon(Icons.card_travel),
                                title: 'Hallo'),
                          ),
                          Positioned(
                            top: 0,
                            left: 100,
                            child: HomeScreenCard(
                                elevatedButtonRoute: () {},
                                color: AppColors().darkGreen,
                                icon: Icon(Icons.card_travel),
                                title: 'Hallo'),
                          ),
                          Positioned(
                            top: 100,
                            left: 0,
                            child: HomeScreenCard(
                                elevatedButtonRoute: () {},
                                color: AppColors().darkBlue,
                                icon: Icon(Icons.card_travel),
                                title: 'Hallo'),
                          ),
                          Positioned(
                            top: 100,
                            left: 100,
                            child: HomeScreenCard(
                                elevatedButtonRoute: () {},
                                color: AppColors().darkYellow,
                                icon: Icon(Icons.card_travel),
                                title: 'Hallo'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Container(height: 150),
              const Text(
                "UNSICHER?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(height: 20),
              /*AppButton(
                text: "Wahl-O-Mat asoidhgö odbfh öa<sih b",
                color: AppColors().black,
                onPressed: (){
                  Get.to(() => const JobListTopicScreen());
                },
              ),*/
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => JobListTopicScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 25),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Wahl-O-Mat",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
          elevation: 0,
          child: CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage(
              'assets/images/darkJomaLogo.png',
            ),
          ),
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
          },
        ),
      ),
      bottomNavigationBar: AppNavBar(backgroundColor: AppColors().darkPrimaryColor, selectedItemColor: AppColors().darkSecondaryColor, unselectedItemColor: AppColors().white),
      /*bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {
            if (value == 0)
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const JobListSearchScreen()),
              );
            if (value == 1)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilLoader()),
              );
            //if (value == 2) Navigator.of(context).push(...);
          },
          backgroundColor: AppColors().darkPrimaryColor,
          selectedItemColor: AppColors().white,
          unselectedItemColor: AppColors().white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: AppIcons().searchGlass,
              label: 'Suchen',
            ),
            BottomNavigationBarItem(
              icon: AppIcons().profile,
              label: 'Profil',
            ),
          ]),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = AppBackgroundColors().darkBackground;

    canvas.drawPath(mainBackground, paint);

    var paint4 = Paint()
      ..color = const Color.fromRGBO(20, 20, 40, 0.3)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(width * 0.8, height * 0.8), width * 0.5, paint4);

    var paint1 = Paint()
      ..color = const Color.fromRGBO(25, 25, 126, 0.4)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(width * 0.1, height * 0.5), width * 0.45, paint1);

    var paint2 = Paint()
      ..color = const Color.fromRGBO(87, 87, 174, 0.2)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(width * 0.8, height * 0.2), width * 0.5, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
