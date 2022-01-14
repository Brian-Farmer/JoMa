import 'package:flutter/material.dart';
import 'package:joma/materials/assets.dart';

// ---------- BUTTONS ----------

/* Diese Klasse beinhaltet einen standardisierten Button, der sich durch unsere App zieht (wie z.B. im Login-Screen)
zum Einbinden:
  - AppButton(text: hier den Text einfügen, der auf dem Button angezeigt werden soll,
              color: hier die Farbe einfügen, entweder AppColors().darkPrimaryColor oder AppColors().darkSecondaryColor,
              onPressed: hier die Callback-Routine einfügen, bspw. für den HomeScreen -> () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));}
              )
*/
class AppButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  // TODO: implement a possibility to use an icon in the button
  // TODO: implement a possibility to change the text color

  AppButton({required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.fromLTRB(0, 25, 0, 25)),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  AppTextStyles.darkButtonText),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: color))))),
    );
  }
}

class AppButtonWithCheckbox extends StatelessWidget {
  final String text;
  final Color color;
  bool isChecked = false;
  // TODO: implement a possibility to use an icon in the button
  // TODO: implement a possibility to change the text color

  AppButtonWithCheckbox({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: ElevatedButton(
          onPressed: () {},
          child: Container(
            child: Row(
              children: [
                Text(
                  text,
                ),
                Spacer(),
                Checkbox(
                  checkColor: AppColors().white,
                  fillColor: MaterialStateProperty.all<Color>(AppColors().white),
                  value: isChecked,
                  onChanged: (bool? value) {
                      isChecked = value!;
                  },
                ),
              ],
            ),
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.fromLTRB(0, 25, 0, 25)),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  AppTextStyles.darkButtonText),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: color))))),
    );
  }
}