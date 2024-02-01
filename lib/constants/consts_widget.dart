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
    fontSize: 24.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);
const styleTexte = TextStyle(
    fontSize: 15.0, color: Color(mcvBlack), fontWeight: FontWeight.bold);

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

// Construction des séparateurs
const separateHAbout = SizedBox(height: 20.0);
const separateHAboutBG = SizedBox(height: 250.0);
