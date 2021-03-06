import 'package:flutter_svg/svg.dart';
import 'package:joma/materials/appbar_job.dart';
import 'package:joma/materials/appbar_replaceable_image.dart';
import 'package:joma/materials/navbar.dart';
import 'package:joma/screens/screen_home.dart';
import 'package:joma/screens/screen_profil_loader.dart';
import 'package:joma/screens/screen_settings.dart';
import 'package:flutter/material.dart';
import 'package:joma/materials/assets.dart';
import 'package:joma/materials/button.dart';
import 'screen_joblist_search.dart';
import 'package:url_launcher/url_launcher.dart';

class Impressum extends StatelessWidget {
  const Impressum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarJobArea(
        blocked: 0,
        bgColor: Colors.transparent,
        bgColorBar: AppColors().darkPrimaryColor,
        circleColor: AppColors().darkSecondaryColor,
        color: AppBackgroundColors().darkBackground,
        title: 'Impressum'.toUpperCase(),
        hoehe: 230,
        imageUrl: 'assets/icons/speaker_notes_black_24dp.svg',
        onPressed1: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: AppBackgroundColors().darkBackground,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          //width: 390.0,
          //height: 644.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
// Group: Gruppe 4
              Column(
                //top: 360.0,
                //color: Colors.red,
                children: [
                  Container(height: 20),
                  Container(
                    //top: 15.0,
                    child: Container(
                        width: MediaQuery.of(context).size.width -25,
                        height: 340.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                  Container(height: 20),
                  Container(
                    width: 380.0,
                    child: AppButton(text: "Impressum der Entwickler",
                        color:AppColors().darkSecondaryColor,
                        onPressed: () {
                          _launchURL();
                        }
                    ),
                  ),
                  Container(height: 50),
                ],
              ),
              Column(
                children: [
                  Container(height: 20,
                  ),
                  Container(
                    child: Container(
                      width: 350.0,
                      height: 330.0,
                      child: SingleChildScrollView(
                        //TODO edit text for Impressum
                        child: Text(
                          'Impressum\nAngaben gem. ?? 5 TMG:\nVorname, Name\nAdresse\nPLZ\nKontaktaufnahme:\nTelefon:\nFax:\nE-Mail:\n \nUmsatzsteuer-ID\n \nUmsatzsteuer-Identifikationsnummer gem. ?? 27 a Umsatzsteuergesetz:\nDE XXX XXX XXX\n \nHaftungsausschluss ??? Disclaimer:\nHaftung f??r Inhalte\nAlle Inhalte unseres Internetauftritts wurden mit gr????ter Sorgfalt und nach bestem Gewissen erstellt. F??r die Richtigkeit, Vollst??ndigkeit und Aktualit??t der Inhalte k??nnen wir jedoch keine Gew??hr ??bernehmen. Als Diensteanbieter sind wir gem???? ?? 7 Abs.1 TMG f??r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach ???? 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, ??bermittelte oder gespeicherte fremde Informationen zu ??berwachen oder nach Umst??nden zu forschen, die auf eine rechtswidrige T??tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber??hrt.\nEine diesbez??gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntniserlangung einer konkreten Rechtsverletzung m??glich. Bei Bekanntwerden von den o.g. Rechtsverletzungen werden wir diese Inhalte unverz??glich entfernen.\nHaftungsbeschr??nkung f??r externe Links\nUnsere Webseite enth??lt Links auf externe Webseiten Dritter. Auf die Inhalte dieser direkt oder indirekt verlinkten Webseiten haben wir keinen Einfluss. Daher k??nnen wir f??r die ???externen Links??? auch keine Gew??hr auf Richtigkeit der Inhalte ??bernehmen. F??r die Inhalte der externen Links sind die jeweilige Anbieter oder Betreiber (Urheber) der Seiten verantwortlich.\nDie externen Links wurden zum Zeitpunkt der Linksetzung auf eventuelle Rechtsverst????e ??berpr??ft und waren im Zeitpunkt der Linksetzung frei von rechtswidrigen Inhalten. Eine st??ndige inhaltliche ??berpr??fung der externen Links ist ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht m??glich. Bei direkten oder indirekten Verlinkungen auf die Webseiten Dritter, die au??erhalb unseres Verantwortungsbereichs liegen, w??rde eine Haftungsverpflichtung ausschlie??lich in dem Fall nur bestehen, wenn wir von den Inhalten Kenntnis erlangen und es uns technisch m??glich und zumutbar w??re, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.\nDiese Haftungsausschlusserkl??rung gilt auch innerhalb des eigenen Internetauftrittes ???Name Ihrer Domain??? gesetzten Links und Verweise von Fragestellern, Blogeintr??gern, G??sten des Diskussionsforums. F??r illegale, fehlerhafte oder unvollst??ndige Inhalte und insbesondere f??r Sch??den, die aus der Nutzung oder Nichtnutzung solcherart dargestellten Informationen entstehen, haftet allein der Diensteanbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der ??ber Links auf die jeweilige Ver??ffentlichung lediglich verweist.\nWerden uns Rechtsverletzungen bekannt, werden die externen Links durch uns unverz??glich entfernt.\nUrheberrecht\nDie auf unserer Webseite ver??ffentlichen Inhalte und Werke unterliegen dem deutschen Urheberrecht (http://www.gesetze-im-internet.de/bundesrecht/urhg/gesamt.pdf) . Die Vervielf??ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung des geistigen Eigentums in ideeller und materieller Sicht des Urhebers au??erhalb der Grenzen des Urheberrechtes bed??rfen der vorherigen schriftlichen Zustimmung des jeweiligen Urhebers i.S.d. Urhebergesetzes (http://www.gesetze-im-internet.de/bundesrecht/urhg/gesamt.pdf ). Downloads und Kopien dieser Seite sind nur f??r den privaten und nicht kommerziellen Gebrauch erlaubt. Sind die Inhalte auf unserer Webseite nicht von uns erstellt wurden, sind die Urheberrechte Dritter zu beachten. Die Inhalte Dritter werden als solche kenntlich gemacht. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte unverz??glich entfernen.',
                          style: AppTextStyles.darkMainText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: IconButton(
          icon: SvgPicture.asset(
            "assets/images/darkLogo.svg",
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ScreenHome()),
            );
          },
        ),
      ),
      bottomNavigationBar: AppNavBar(
        backgroundColor: AppColors().darkPrimaryColor,
        selectedItemColor:AppColors().white,
        unselectedItemColor: AppBackgroundColors().darkBackground,
      ),
    );

  }
}
void _launchURL() async {
  const url = 'http://joma.informatik.hs-fulda.de/';
  if (!await launch(url)) throw 'Could not launch $url';
}
