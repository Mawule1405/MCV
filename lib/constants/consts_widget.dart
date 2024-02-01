import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

//Les constantes
import '../constants/consts_color.dart';

const styleAppBarTitle = TextStyle(
    fontSize: 30.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

const styleHighTitle = TextStyle(
    fontSize: 61.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

const styleMeanTitle = TextStyle(
    fontSize: 38.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

const styleSmallTitle = TextStyle(
    fontSize: 15.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);
const styleTexte = TextStyle(
    fontSize: 15.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

const styleTexte2 = TextStyle(
    fontSize: 15.0, color: Color(mcvBlack), fontWeight: FontWeight.normal);

const styleTexteOrange = TextStyle(
    fontSize: 15.0, color: Color(mcvOrange), fontWeight: FontWeight.bold);

const styleTexteWhite = TextStyle(
    fontSize: 15.0, color: Color(mcvWhite), fontWeight: FontWeight.bold);

const stylButtonTexte = TextStyle(
    fontSize: 9.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

//Fonction generatrice de RotateAnimetedText
RotateAnimatedText generatorAnimated(String texte, {int duree = 5}) {
  /* 
    Cette fonction permet de générer une rotateAnimatedText à partir d'un texte et/ou d'une durée.
    Elle est contenue dans le fichier consts_widget.dart
   */
  return RotateAnimatedText(
    texte,
    textStyle: styleTexte,
    duration: Duration(seconds: duree),
    textAlign: TextAlign.center,
  );
}

//Fonction pour generer des formations
Widget generatorFormation(
    BuildContext c, String intitule, String periode, String ecole) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 2.0 * MediaQuery.of(c).size.width / 3 - 20.0,
                  child: Text(
                    intitule,
                    style: styleTexteOrange,
                  ),
                ),
                Container(
                  width: MediaQuery.of(c).size.width / 3 - 20.0,
                  alignment: Alignment.topRight,
                  child: Text(
                    periode,
                    style: styleTexte,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              alignment: Alignment.topLeft,
              child: Text(
                ecole,
                style: styleTexte2,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Color(mcvBlack)),
              child: SizedBox(
                height: 5.0,
                width: MediaQuery.of(c).size.width - 40,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

//Fonction générateur de titre
Widget generatorTitle(BuildContext c, titleForm) {
  return Container(
      padding: EdgeInsets.only(top: 40, bottom: 5, left: 20, right: 20),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.school,
              color: Color(mcvOrange),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.topLeft,
            width: MediaQuery.of(c).size.width - 100,
            child: Text(
              titleForm,
              style: styleSmallTitle,
            ),
          ),
        ],
      ));
}

// Construction des séparateurs
const separateHAbout = SizedBox(height: 20.0);
const separateHAboutBG = SizedBox(height: 250.0);
