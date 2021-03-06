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
import 'package:url_launcher/url_launcher.dart';
import 'screen_joblist_search.dart';

class Datenschutz extends StatelessWidget {
  const Datenschutz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarJobArea(
        blocked: 0,
        bgColor: Colors.transparent,
        bgColorBar: AppColors().darkPrimaryColor,
        circleColor: AppColors().darkSecondaryColor,
        color: AppBackgroundColors().darkBackground,
        title: 'Datenschutz'.toUpperCase(),
        hoehe: 230,
        imageUrl: 'assets/icons/user-shield-solid.svg',
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
                  child: AppButton(text: "Datenschutzhinweis der Hochschule Fulda",
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
                    //TODO edit text for Datenschutz
                    child: Text(
                      'Datenschutzerkl??rung nach DSGVO\n\n1.	Grundlegendes\n\nMit dieser Datenschutzerkl??rung informieren wir Sie ??ber die Art, den Umfang und den Zweck der Erhebung und Verwendung personenbezogener Daten durch den Websitebetreiber [Ihre Kontaktdaten einf??gen].\n\nDer Websitebetreiber nimmt Ihren Datenschutz sehr ernst und behandelt Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Vorschriften. Da durch neue Technologien und die st??ndige Weiterentwicklung dieser Webseite ??nderungen an dieser Datenschutzerkl??rung vorgenommen werden k??nnen, empfehlen wir Ihnen sich die Datenschutzerkl??rung in regelm????igen Abst??nden wieder durchzulesen.\n\nDer Begriff ???personenbezogene Daten??? meint alle Daten, die auf Sie pers??nlich beziehbar sind. Darunter fallen beispielsweise Name, Adresse, E-Mailadressen, Nutzerverhalten. Hinsichtlich der ??brigen Begrifflichkeiten, insbesondere der Begriffe ???Verarbeitung??? und ???Einwilligung??? verweisen wir auf die gesetzlichen datenschutzrechtlichen Definitionen.\nWeitere Definitionen von Begriffen finden Sie in Art. 4 DSGVO.\n\n2.	Name und Anschrift des Verantwortlichen\nDer Verantwortliche im Sinne der Datenschutz-Grundverordnung und anderer nationaler Datenschutzgesetze der Mitgliedsstaaten sowie sonstiger datenschutzrechtlicher Bestimmungen ist die: \n\nMuster GmbH\nMusterstra??e\n12345 Musterort\nDeutschland\n\nTel.: xx\nE-Mail: xx \nWebsite: xx\n\n3.	Name und Anschrift des Datenschutzbeauftragten \nDer Datenschutzbeauftragte des Verantwortlichen ist:\n\nMax Mustermann\nMusterstra??e\n12345 Musterort\nDeutschland\n\nTel.: xx\nE-Mail: xx \nWebsite: xx\n\n\n\n\n\n\n4.	Allgemeines zur Datenverarbeitung\nUmfang der Verarbeitung personenbezogener Daten\nWir verarbeiten personenbezogene Daten unserer Nutzer grunds??tzlich nur, soweit dies zur Bereitstellung einer funktionsf??higen Website sowie unserer Inhalte und Leistungen erforderlich ist. Die Verarbeitung personenbezogener Daten unserer Nutzer erfolgt regelm????ig nur nach Einwilligung des Nutzers. Eine Ausnahme gilt in solchen F??llen, in denen eine vorherige Einholung einer Einwilligung aus tats??chlichen Gr??nden nicht m??glich ist und die Verarbeitung der Daten durch gesetzliche Vorschriften gestattet ist. \nRechtsgrundlage f??r die Verarbeitung personenbezogener Daten\nSoweit wir f??r Verarbeitungsvorg??nge personenbezogener Daten eine Einwilligung der betroffenen Person einholen, dient Art. 6 Abs. 1 lit. a EU-Datenschutzgrundverordnung (DSGVO) als Rechtsgrundlage. Bei der Verarbeitung von personenbezogenen Daten, die zur Erf??llung eines Vertrages, dessen Vertragspartei die betroffene Person ist, erforderlich ist, dient Art. 6 Abs. 1 lit. b DSGVO als Rechtsgrundlage. Dies gilt auch f??r Verarbeitungsvorg??nge, die zur Durchf??hrung vorvertraglicher Ma??nahmen erforderlich sind. Soweit eine Verarbeitung personenbezogener Daten zur Erf??llung einer rechtlichen Verpflichtung erforderlich ist, der unser Unternehmen unterliegt, dient Art. 6 Abs. 1 lit. c DSGVO als Rechtsgrundlage. F??r den Fall, dass lebenswichtige Interessen der betroffenen Person oder einer anderen nat??rlichen Person eine Verarbeitung personenbezogener Daten erforderlich machen, dient Art. 6 Abs. 1 lit. d DSGVO als Rechtsgrundlage. \nIst die Verarbeitung zur Wahrung eines berechtigten Interesses unseres Unternehmens oder eines Dritten erforderlich und ??berwiegen die Interessen, Grundrechte und Grundfreiheiten des Betroffenen das erstgenannte Interesse nicht, so dient Art. 6 Abs. 1 lit. f DSGVO als Rechtsgrundlage f??r die Verarbeitung.\n\nDatenl??schung und Speicherdauer\n\nDie personenbezogenen Daten der betroffenen Person werden gel??scht oder gesperrt, sobald der Zweck der Speicherung entf??llt. Eine Speicherung kann dar??ber hinaus erfolgen, wenn dies durch den europ??ischen oder nationalen Gesetzgeber in unionsrechtlichen Verordnungen, Gesetzen oder sonstigen Vorschriften, denen der Verantwortliche unterliegt, vorgesehen wurde. Eine Sperrung oder L??schung der Daten erfolgt auch dann, wenn eine durch die genannten Normen vorgeschriebene Speicherfrist abl??uft, es sei denn, dass eine Erforderlichkeit zur weiteren Speicherung der Daten f??r einen Vertragsabschluss oder eine Vertragserf??llung besteht.\n\n5.	Zugriffsdaten\n\nWir, der Websitebetreiber bzw. Seitenprovider, erheben aufgrund unseres berechtigten Interesses (s. Art. 6 Abs. 1 lit. f. DSGVO) Daten ??ber Zugriffe auf die Website und speichern diese als ???Server-Logfiles??? auf dem Server der Website ab. Folgende Daten werden so protokolliert:\n\n???	Besuchte Website\n???	Uhrzeit zum Zeitpunkt des Zugriffes\n???	Menge der gesendeten Daten in Byte\n???	Quelle/Verweis, von welchem Sie auf die Seite gelangten\n???	Verwendeter Browser\n???	Verwendetes Betriebssystem\n???	Verwendete IP-Adresse\n\nDie Server-Logfiles werden f??r maximal 7 Tage gespeichert und anschlie??end gel??scht. Die Speicherung der Daten erfolgt aus Sicherheitsgr??nden, um z. B. Missbrauchsf??lle aufkl??ren zu k??nnen. M??ssen Daten aus Beweisgr??nden aufgehoben werden, sind sie solange von der L??schung ausgenommen bis der Vorfall endg??ltig gekl??rt ist.\n\n6.	Reichweitenmessung & Cookies\n\nDiese Website verwendet Cookies zur pseudonymisierten Reichweitenmessung, die entweder von unserem Server oder dem Server Dritter an den Browser des Nutzers ??bertragen werden. Bei Cookies handelt es sich um kleine Dateien, welche auf Ihrem Endger??t gespeichert werden. Ihr Browser greift auf diese Dateien zu. Durch den Einsatz von Cookies erh??ht sich die Benutzerfreundlichkeit und Sicherheit dieser Website.\nFalls Sie nicht m??chten, dass Cookies zur Reichweitenmessung auf Ihrem Endger??t gespeichert werden, k??nnen Sie dem Einsatz dieser Dateien hier widersprechen:\n\n???	Cookie-Deaktivierungsseite der Netzwerkwerbeinitiative: http://optout.networkadvertising.org/?c=1#!/\n???	Cookie-Deaktivierungsseite der US-amerikanischen Website: http://optout.aboutads.info/?c=2#!/\n???	Cookie-Deaktivierungsseite der europ??ischen Website: http://optout.networkadvertising.org/?c=1#!/\n\nG??ngige Browser bieten die Einstellungsoption, Cookies nicht zuzulassen. Hinweis: Es ist nicht gew??hrleistet, dass Sie auf alle Funktionen dieser Website ohne Einschr??nkungen zugreifen k??nnen, wenn Sie entsprechende Einstellungen vornehmen.\n\nErfassung und Verarbeitung personenbezogener Daten\n\nDer Websitebetreiber erhebt, nutzt und gibt Ihre personenbezogenen Daten nur dann weiter, wenn dies im gesetzlichen Rahmen erlaubt ist oder Sie in die Datenerhebung einwilligen.\nAls personenbezogene Daten gelten s??mtliche Informationen, welche dazu dienen, Ihre Person zu bestimmen und welche zu Ihnen zur??ckverfolgt werden k??nnen ??? also beispielsweise Ihr Name, Ihre E-Mail-Adresse und Telefonnummer.\n\nDiese Website k??nnen Sie auch besuchen, ohne Angaben zu Ihrer Person zu machen. Zur Verbesserung unseres Online-Angebotes speichern wir jedoch (ohne Personenbezug) Ihre Zugriffsdaten auf diese Website. Zu diesen Zugriffsdaten geh??ren z. B. die von Ihnen angeforderte Datei oder der Name Ihres Internet-Providers. Durch die Anonymisierung der Daten sind R??ckschl??sse auf Ihre Person nicht m??glich. \n\n7.	Umgang mit Kontaktdaten\n\nNehmen Sie mit uns als Websitebetreiber durch die angebotenen Kontaktm??glichkeiten Verbindung auf, werden Ihre Angaben gespeichert, damit auf diese zur Bearbeitung und Beantwortung Ihrer Anfrage zur??ckgegriffen werden kann. Ohne Ihre Einwilligung werden diese Daten nicht an Dritte weitergegeben.\n\n8.	Umgang mit Kommentaren und Beitr??gen\n\nHinterlassen Sie auf dieser Website einen Beitrag oder Kommentar, wird Ihre IP-Adresse gespeichert. Dies erfolgt aufgrund unserer berechtigten Interessen im Sinne des Art. 6 Abs. 1 lit. f. DSGVO und dient der Sicherheit von uns als Websitebetreiber: Denn sollte Ihr Kommentar gegen geltendes Recht versto??en, k??nnen wir daf??r belangt werden, weshalb wir ein Interesse an der Identit??t des Kommentar- bzw. Beitragsautors haben.\n\n9.	Google Analytics\n\nDiese Website nutzt aufgrund unserer berechtigten Interessen zur Optimierung und Analyse unseres Online-Angebots im Sinne des Art. 6 Abs. 1 lit. f. DSGVO den Dienst ???Google Analytics???, welcher von der Google Inc. (1600 Amphitheatre Parkway Mountain View, CA 94043, USA) angeboten wird. Der Dienst (Google Analytics) verwendet ???Cookies??? ??? Textdateien, welche auf Ihrem Endger??t gespeichert werden. Die durch die Cookies gesammelten Informationen werden im Regelfall an einen Google-Server in den USA gesandt und dort gespeichert.\n\nGoogle LLC h??lt das europ??ische Datenschutzrecht ein und ist unter dem Privacy-Shield-Abkommen zertifiziert: https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&status=Active\n\nAuf dieser Website greift die IP-Anonymisierung. Die IP-Adresse der Nutzer wird innerhalb der Mitgliedsstaaten der EU und des Europ??ischen Wirtschaftsraum und in den anderen Vertragsstaaten des Abkommens gek??rzt. Nur in Einzelf??llen wird die IP-Adresse zun??chst ungek??rzt in die USA an einen Server von Google ??bertragen und dort gek??rzt. Durch diese K??rzung entf??llt der Personenbezug Ihrer IP-Adresse. Die vom Browser ??bermittelte IP-Adresse des Nutzers wird nicht mit anderen von Google gespeicherten Daten kombiniert.\n\nIm Rahmen der Vereinbarung zur Auftragsdatenvereinbarung, welche wir als Websitebetreiber mit der Google Inc. geschlossen haben, erstellt diese mithilfe der gesammelten Informationen eine Auswertung der Websitenutzung und der Websiteaktivit??t und erbringt mit der Internetnutzung verbundene Dienstleistungen.\n\nDie von Google in unserem Auftrag erhobenen Daten werden genutzt, um die Nutzung unseres Online-Angebots durch die einzelnen Nutzer auswerten zu k??nnen, z. B. um Reports ??ber die Aktivit??t auf der Website zu erstellen, um unser Online-Angebot zu verbessern.\n\nSie haben die M??glichkeit, die Speicherung der Cookies auf Ihrem Ger??t zu verhindern, indem Sie in Ihrem Browser entsprechende Einstellungen vornehmen. Es ist nicht gew??hrleistet, dass Sie auf alle Funktionen dieser Website ohne Einschr??nkungen zugreifen k??nnen, wenn Ihr Browser keine Cookies zul??sst.\n\nWeiterhin k??nnen Sie durch ein Browser-Plugin verhindern, dass die durch Cookies gesammelten Informationen (inklusive Ihrer IP-Adresse) an die Google Inc. gesendet und von der Google Inc. genutzt werden. Folgender Link f??hrt Sie zu dem entsprechenden Plugin: https://tools.google.com/dlpage/gaoptout?hl=de\n\nAlternativ verhindern Sie mit einem Klick auf diesen Link (WICHTIG: Opt-Out-Link einf??gen), dass Google Analytics innerhalb dieser Website Daten ??ber Sie erfasst. Mit dem Klick auf obigen Link laden Sie ein ???Opt-Out-Cookie??? herunter. Ihr Browser muss die Speicherung von Cookies also hierzu grunds??tzlich erlauben. L??schen Sie Ihre Cookies regelm????ig, ist ein erneuter Klick auf den Link bei jedem Besuch dieser Website vonn??ten.\n\nHier finden Sie weitere Informationen zur Datennutzung durch die Google Inc.: \n\n???	https://policies.google.com/privacy/partners?hl=de (Daten, die von Google-Partnern erhoben werden)\n???	https://adssettings.google.de/authenticated (Einstellungen ??ber Werbung, die Ihnen angezeigt wird)\n???	https://policies.google.com/technologies/ads?hl=de (Verwendung von Cookies in Anzeigen)\n\n10.	Nutzung von Social-Media-Plugins von Facebook\n\nAufgrund unseres berechtigten Interesses an der Analyse, Optimierung und dem Betrieb unseres Online-Angebotes (im Sinne des Art. 6 Abs. 1 lit. f. DSGVO), verwendet diese Website das Facebook-Social-Plugin, welches von der Facebook Inc. (1 Hacker Way, Menlo Park, California 94025, USA) betrieben wird. Erkennbar sind die Einbindungen an dem Facebook-Logo bzw. an den Begriffen ???Like???, ???Gef??llt mir???, ???Teilen??? in den Farben Facebooks (Blau und Wei??). Informationen zu allen Facebook-Plugins finden Sie ??ber den folgenden Link: https://developers.facebook.com/docs/plugins/\n\nFacebook Inc. h??lt das europ??ische Datenschutzrecht ein und ist unter dem Privacy-Shield-Abkommen zertifiziert: https://www.privacyshield.gov/participant?id=a2zt0000000GnywAAC&status=Active\n\nDas Plugin stellt eine direkte Verbindung zwischen Ihrem Browser und den Facebook-Servern her. Der Websitebetreiber hat keinerlei Einfluss auf die Natur und den Umfang der Daten, welche das Plugin an die Server der Facebook Inc. ??bermittelt. Informationen dazu finden Sie hier: https://www.facebook.com/help/186325668085084\n\nDas Plugin informiert die Facebook Inc. dar??ber, dass Sie als Nutzer diese Website besucht haben. Es besteht hierbei die M??glichkeit, dass Ihre IP-Adresse gespeichert wird. Sind Sie w??hrend des Besuchs auf dieser Website in Ihrem Facebook-Konto eingeloggt, werden die genannten Informationen mit diesem verkn??pft.\n\nNutzen Sie die Funktionen des Plugins ??? etwa indem Sie einen Beitrag teilen oder ???liken??? ???, werden die entsprechenden Informationen ebenfalls an die Facebook Inc. ??bermittelt.\nM??chten Sie verhindern, dass die Facebook. Inc. diese Daten mit Ihrem Facebook-Konto verkn??pft, loggen Sie sich bitte vor dem Besuch dieser Website bei Facebook aus und l??schen Sie die gespeicherten Cookies. ??ber Ihr Facebook-Profil k??nnen Sie weitere Einstellungen zur Datenverarbeitung f??r Werbezwecke t??tigen oder der Nutzung Ihrer Daten f??r Werbezwecke widersprechen. Zu den Einstellungen gelangen Sie hier: \n\n???	Profileinstellungen bei Facebook: https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen\n???	Cookie-Deaktivierungsseite der US-amerikanischen Website: http://optout.aboutads.info/?c=2#!/\n???	Cookie-Deaktivierungsseite der europ??ischen Website: http://optout.networkadvertising.org/?c=1#!/\n\nWelche Daten, zu welchem Zweck und in welchem Umfang Facebook Daten erhebt, nutzt und verarbeitet und welche Rechte sowie Einstellungsm??glichkeiten Sie zum Schutz Ihrer Privatsph??re haben, k??nnen Sie in den Datenschutzrichtlinien von Facebook nachlesen. Diese finden Sie hier: https://www.facebook.com/about/privacy/ \n\nHinweis: Je nachdem welche weiteren Tools und Integrationen du auf deiner Website nutzt und welche Cookies du einsetzt (z.B. Google Ads, Bing Ads, etc.), musst du diese ebenfalls hier auff??hren. \n\n11.	Newsletter\n\nBeschreibung und Umfang der Datenverarbeitung\n\nAuf unserer Internetseite besteht die M??glichkeiteinen kostenfreien Newsletter zu abonnieren. Dabei werden bei der Anmeldung zum Newsletter die Daten aus der Eingabemaske an uns ??bermittelt.\n???	E-Mail-Adresse\no	IP-Adresse des aufrufenden Rechners\no	Datum und Uhrzeit der Registrierung\n\nF??r die Verarbeitung der Daten wird im Rahmen des Anmeldevorgangs Ihre Einwilligung eingeholt und auf diese Datenschutzerkl??rung verwiesen.\n\nRechtsgrundlage f??r die Datenverarbeitung\n\nRechtsgrundlage f??r den Versand des Newsletters infolge des Verkaufs von Waren oder Dienstleistungen ist ?? 7 Abs. 3 UWG. \n\nZweck der Datenverarbeitung\n\nDie Erhebung der E-Mail-Adresse des Nutzers dient dazu, den Newsletter zuzustellen. \n\nDauer der Speicherung\n\nDie Daten werden gel??scht, sobald sie f??r die Erreichung des Zweckes ihrer Erhebung nicht mehr erforderlich sind. Die E-Mail-Adresse des Nutzers wird demnach solange gespeichert, wie das Abonnement des Newsletters aktiv ist. \n\nWiderspruchs-und Beseitigungsm??glichkeit \n\nDas Abonnement des Newsletters kann durch den betroffenen Nutzer jederzeit gek??ndigt werden. Zu diesem Zweck findet sich in jedem Newsletter ein entsprechender Link.\n\n12.	Rechte des Nutzers\n\nSie haben als Nutzer das Recht, auf Antrag eine kostenlose Auskunft dar??ber zu erhalten, welche personenbezogenen Daten ??ber Sie gespeichert wurden. Sie haben au??erdem das Recht auf Berichtigung falscher Daten und auf die Verarbeitungseinschr??nkung oder L??schung Ihrer personenbezogenen Daten. Falls zutreffend, k??nnen Sie auch Ihr Recht auf Datenportabilit??t geltend machen. Sollten Sie annehmen, dass Ihre Daten unrechtm????ig verarbeitet wurden, k??nnen Sie eine Beschwerde bei der zust??ndigen Aufsichtsbeh??rde einreichen.\n\nL??schung von Daten\n\nSofern Ihr Wunsch nicht mit einer gesetzlichen Pflicht zur Aufbewahrung von Daten (z. B. Vorratsdatenspeicherung) kollidiert, haben Sie ein Anrecht auf L??schung Ihrer Daten. Von uns gespeicherte Daten werden, sollten sie f??r ihre Zweckbestimmung nicht mehr vonn??ten sein und es keine gesetzlichen Aufbewahrungsfristen geben, gel??scht. Falls eine L??schung nicht durchgef??hrt werden kann, da die Daten f??r zul??ssige gesetzliche Zwecke erforderlich sind, erfolgt eine Einschr??nkung der Datenverarbeitung. In diesem Fall werden die Daten gesperrt und nicht f??r andere Zwecke verarbeitet.\n\n13.	Widerspruchsrecht\n\nNutzer dieser Webseite k??nnen von ihrem Widerspruchsrecht Gebrauch machen und der Verarbeitung ihrer personenbezogenen Daten zu jeder Zeit widersprechen. \n\nWenn Sie eine Berichtigung, Sperrung, L??schung oder Auskunft ??ber die zu Ihrer Person gespeicherten personenbezogenen Daten w??nschen oder Fragen bzgl. der Erhebung, Verarbeitung oder Verwendung Ihrer personenbezogenen Daten haben oder erteilte Einwilligungen widerrufen m??chten, wenden Sie sich bitte an folgende E-Mail-Adresse: [E-Mail-Adresse einf??gen]\n\nHinweis: Je nachdem welche personenbezogenen Daten, Cookies, Plugins etc. du auf deiner Webseite verwendest, musst du in deiner Datenschutzerkl??rung weitere Informationen auff??hren. \n\nDazu geh??ren beispielsweise Informationen ??ber:\n\n???	Die Weitergabe von Daten an Dritte und Drittanbieter\n???	Einbindungen von Diensten und Inhalten Dritter (z. B. Google-Fonts oder YouTube-Videos)\n???	Erbringung vertraglicher Leistungen\n???	Kontaktaufnahme ??ber das Kontaktformular\n???	Verwendung von Session-Cookies\n???	Einsatz von datenverarbeitenden Anti-Spam-Plugins\n???	Nutzung des Google Remarketing-Tags\n???	Verwendung von Google+ oder Twitter-Schaltfl??chen\n???	Und weitere\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nGesch??ftsunterlagen, die mit Word oder Excel erstellt werden, sind nicht GoBD-konform.\nMehr zum GoBD Zertifikat von sevDesk.\n\nErledige deine B??roarbeit und Buchhaltung jetzt einfach und schnell mit sevDesk ??? der professionellen online Buchhaltungssoftware!\nMehr ??ber sevDesk erfahren.\n\n\n	\n',
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
          icon: SvgPicture.asset("assets/images/darkLogo.svg",
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
        selectedItemColor: AppColors().white,
        unselectedItemColor: AppBackgroundColors().darkBackground,
     ),

    );
  }
}

void _launchURL() async {
  const url = 'https://www.hs-fulda.de/datenschutz';
  if (!await launch(url)) throw 'Could not launch $url';
}