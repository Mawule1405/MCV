import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Importation des constantes
import 'package:mycv/constants/consts_color.dart';
import 'package:mycv/constants/consts_image.dart';
import 'package:mycv/constants/consts_string.dart';
import 'package:mycv/constants/consts_widget.dart';
//Importation des ecrans et des composantes
import 'package:mycv/screens/home_screen.dart';
import '../screens/call_screen.dart';
import '../screens/about_screen.dart';
import '../screens/formation_screen.dart';
import '../screens/competence_screen.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(mcvWhite),
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage(appIconMcv),
                ),
              ),
            ),

            /* 
            La liste des fonctionnalités du drawer
            */

            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  //Accueil
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => HomeScreen())),
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.home),
                        Text(
                          mcvGAccueil,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //Formations
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => FormationScreen())),
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.school),
                        Text(
                          mcvGFormation,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //Competences
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => CompetenceScreen())),
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.work),
                        Text(
                          mcvGCompetence,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //Portfolio
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.work_history),
                        Text(
                          mcvGPortfolio,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //Contactez-nous
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => CallScreen())),
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.call),
                        Text(
                          mcvGContacter,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //About
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => AboutSreen())),
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.description),
                        Text(
                          mcvGAbout,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
