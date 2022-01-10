import 'package:flutter/material.dart';
import 'package:joma/materials/assets.dart';

// ---------- CARDS ----------

/* Diese Klasse beinhaltet die generalisierte Card bei der Jobauflistung und der Jobsuche
zum Einbinden:
  - AppCard(jobTitle: // hier Jobtitel übergeben, z.B. 'Handwerker',
            jobDescription: // hier Jobbeschreibung übergeben, z.B. 'Lorem Ipsum. Bewirb dich jetzt!',
            color: // hier die Farbe der Jobkategorie übergeben, z.B. AppColors().darkRed,
            onPressed: // hier die Route übergeben, die beim Anklicken der Karte angesteuert werden soll, z.B. () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));}
            ),
*/
class AppCard extends StatelessWidget {
  final String jobTitle;
  final String jobDescription;
  final Color color;
  final VoidCallback onPressed;


  AppCard({required this.jobTitle, required this.jobDescription, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 85,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Card(
          elevation: 4,
          child: InkWell(
            splashColor: color.withAlpha(30),
            onTap: () {},
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(jobTitle.toString().toUpperCase(),
                            style: AppTextStyles.darkH4,
                        ),
                        const SizedBox(height: 3),
                        Text(jobDescription.toString(),
                            style: AppTextStyles.darkCardText,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: 15,
                    child: AppIcons().forwardArrow,
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

class AppCardSpecial extends StatelessWidget {
  final String jobTitle;
  final String jobDescription;
  final Color color;
  final VoidCallback onPressed;


  AppCardSpecial({required this.jobTitle, required this.jobDescription, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 145,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Card(
          elevation: 8,
          child: InkWell(
            splashColor: color.withAlpha(30),
            onTap: () {},
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(jobTitle.toString().toUpperCase(),
                          style: AppTextStyles.darkH2,
                        ),
                        const SizedBox(height: 8),
                        Text(jobDescription.toString(),
                          style: AppTextStyles.darkCardText,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: 25,
                    child: AppIcons().forwardArrow,
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

class AppCardSearch extends StatelessWidget {
  final String jobTitle;
  final String jobDescription;
  final Color color;
  final VoidCallback onPressed;


  AppCardSearch({required this.jobTitle, required this.jobDescription, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 85,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Card(
          color: color,
          elevation: 4,
          child: InkWell(
            splashColor: AppColors().white.withAlpha(30),
            onTap: () {},
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(jobTitle.toString().toUpperCase(),
                          style: AppTextStyles.darkH4White,
                        ),
                        const SizedBox(height: 3),
                        Text(jobDescription.toString(),
                          style: AppTextStyles.darkCardTextWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: AppColors().white,
                    radius: 15,
                    child: Icon(Icons.arrow_forward_outlined, color: color),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}