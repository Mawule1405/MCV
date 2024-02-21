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
  const DrawerComponent( );
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(mcvWhite),
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage(appIconMcv),
              ),
            ),

            /* 
            La liste des fonctionnalités du drawer
            */

            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  //Accueil
                  ListTile(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => const HomeScreen())),
                    title: Row(
                      children: <Widget>[
                        const Icon(Icons.home),
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
                        const Icon(Icons.school),
                        Text(
                          mcvGFormation,
                          style: GoogleFonts.rubik(textStyle: styleTexte),
                        ),
                      ],
                    ),
                  ),

                  //Competences
                  ListTile(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const CompetenceScreen())),
                    title: Row(
                      children: <Widget>[
                        const Icon(Icons.work),
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
                        const Icon(Icons.work_history),
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
                        MaterialPageRoute(builder: (c) => const CallScreen())),
                    title: Row(
                      children: <Widget>[
                        const Icon(Icons.call),
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
                        MaterialPageRoute(builder: (c) => const AboutScreen())),
                    title: Row(
                      children: <Widget>[
                        const Icon(Icons.description),
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
