import 'package:flutter/material.dart';

//Importation des conatantes
import '../constants/consts_color.dart';
import '../constants/consts_widget.dart';
import '../constants/consts_string.dart';

//Importation des screens et des components
import '../components/drawer_component.dart';

class FormationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(mcvOrange),
        title: Text(
          formApp,
          style: styleAppBarTitle,
        ),
      ),
      drawer: DrawerComponent(),
      body: _formationBody(context),
    );
  }

  Widget _formationBody(BuildContext c) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              generatorTitle(c, formTitle1),
              generatorFormation(c, formIntitule1, formPeriode1, formEcole1),
              generatorFormation(c, formIntitule2, formPeriode2, formEcole2),
              generatorFormation(c, formIntitule3, formPeriode3, formEcole3),
              generatorTitle(c, formTitle2),
              generatorFormation(c, formPIntitle16, encoursForm, formCentre16),
              generatorFormation(c, formPIntitle1, valideForm, formCentre1),
              generatorFormation(c, formPIntitle2, valideForm, formCentre2),
              generatorFormation(c, formPIntitle3, valideForm, formCentre3),
              generatorFormation(c, formPIntitle4, valideForm, formCentre4),
              generatorFormation(c, formPIntitle5, valideForm, formCentre5),
              generatorFormation(c, formPIntitle6, valideForm, formCentre6),
              generatorFormation(c, formPIntitle7, valideForm, formCentre7),
              generatorFormation(c, formPIntitle8, valideForm, formCentre8),
              generatorFormation(c, formPIntitle9, valideForm, formCentre9),
              generatorFormation(c, formPIntitle10, valideForm, formCentre10),
              generatorFormation(c, formPIntitle11, valideForm, formCentre11),
              generatorFormation(c, formPIntitle12, valideForm, formCentre12),
              generatorFormation(c, formPIntitle13, valideForm, formCentre13),
              generatorFormation(c, formPIntitle14, valideForm, formCentre14),
              generatorFormation(c, formPIntitle15, valideForm, formCentre15),
              //generatorFormation(c, formPIntitle16, valideForm, formCentre16),
            ],
          ),
        ),
      ],
    );
  }
}
