import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:joma/controllers/data_controller.dart';
import 'package:joma/materials/appbar_job.dart';
import 'package:joma/materials/assets.dart';
import 'package:joma/materials/card.dart';
import 'package:joma/model/job_category_model.dart';
import 'package:joma/model/job_model.dart';
import 'package:joma/screens/screen_home.dart';
import 'package:joma/screens/screen_job_details.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:joma/screens/screen_profil_loader.dart';
import 'package:joma/screens/screen_settings.dart';
import 'package:joma/services/remote_services.dart';

import 'screen_joblist_search.dart';

class ScreenJobListCategory extends StatelessWidget {
  final int categoryID;

  ScreenJobListCategory({Key? key, required this.categoryID}) : super(key: key);
  final DataController data = Get.find();

  late Color currentColor = Color(
      int.parse(data.jobCategories.elementAt(categoryID).colorHex.toString()));
  late Color currentBackgroundColor = Color(int.parse(
      data.jobCategories.elementAt(categoryID).backgroundColorHex.toString()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentBackgroundColor,
      appBar: AppBarJobArea(
        bgColor: currentBackgroundColor,
        bgColorBar: currentColor,
        color: currentColor,
        title: 'Handwerk'.toUpperCase(),
        hoehe: 200, 
        icon: AppIcons().redSection,
            onPressed1: () {
            Navigator.of(context).pop();
            },
      ),


      body: Center(
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              child: Obx(() {
                var result = <Widget>[];
               

                if (data.jobCategories.elementAt(categoryID).jobOfTheWeek !=
                    -1) {
                  Job jobOfTheWeek = data.jobs.firstWhere((job) =>
                      job.id ==
                      data.jobCategories.elementAt(categoryID).jobOfTheWeek);

                  result.add(AppCardSpecial(
                      jobTitle: jobOfTheWeek.title.toString(),
                      jobDescription: jobOfTheWeek.description!.full.toString(),
                      color: currentColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenJobDetails(
                                      jobID: jobOfTheWeek.id,
                                    )));
                      }));
                }

                result.add(const SizedBox(height: 10));

                for (var currentJob in data.jobs) {
                  if (currentJob.category != categoryID) continue;

                  JobCategory currentJobCategory = data.jobCategories
                      .firstWhere(
                          (category) => category.id == currentJob.category);

                  result.add(AppCard(
                      jobTitle: currentJob.title.toString(),
                      jobDescription: currentJob.description!.full.toString(),
                      color: Color(
                          int.parse(currentJobCategory.colorHex.toString())),
                      //AppColors().darkBlue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenJobDetails(
                                      jobID: currentJob.id,
                                    )));
                      }));
                }
                if (result.length <= 2) {
                  result.add(
                    const Text(
                        "Zur Zeit sind leider keine Jobangebote für diese Kategorie vorhanden.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  );
                }

                return Center(
                  child: Column(children: [

                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: result),
                  ]),
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
          elevation: 0,
          child: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage(
              'assets/images/darkJomaLogo.png',
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenHome(),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          if (value == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ScreenJobListSearch()),
            );
          }
          if (value == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfilLoader()),
            );
          }
          //if (value == 2) Navigator.of(context).push(...);
        },
        backgroundColor: currentColor,
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
        ],
      ),
    );
  }
}
