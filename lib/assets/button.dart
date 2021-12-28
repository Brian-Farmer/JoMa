import 'package:flutter/material.dart';
import 'package:joma/assets/assets.dart';

// ---------- BUTTONS ----------

/* Diese Klasse beinhaltet einen standardisierten Button, der sich durch unsere App zieht (wie z.B. im Login-Screen)
zum Einbinden:
  - AppButton(text: [ hier den Text einfügen, der auf dem Button angezeigt werden soll ],
              color: [ hier die Farbe einfügen, entweder AppColors().darkPrimaryColor oder AppColors().darkSecondaryColor ],
              onPressed: [ hier die Callback-Routine einfügen, bspw. für den HomeScreen ->
              () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));} ]
              )
*/
class AppButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  AppButton({required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(85, 10, 85, 10),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.fromLTRB(0, 20, 0, 20)),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  AppTextStyles.darkButtonText),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: color))))),
    );
  }
}