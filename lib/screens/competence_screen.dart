import 'package:flutter/material.dart';
// import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

//Importation des constantes
import '../constants/consts_color.dart';
import '../constants/consts_widget.dart';

//Importation de sceens et de components
import '../components/drawer_component.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(mcvOrange),
        title: const Text(
          'Compétences',
          style: styleAppBarTitle,
        ),
      ),
      drawer: DrawerComponent(),
      body: _competenceBody(context),
    );
  }

  Widget _competenceBody(BuildContext c) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              generatorTitleComp(c, 'Compétences en enseignements'),
              generatorComptence(c, 'Empathie', 4),
              generatorComptence(c, 'Rigueur', 4),
              generatorComptence(c, 'Compréhensible', 4),
              generatorComptence(c, 'Patient', 5),
              generatorTitleComp(c, 'Compétences en graphisme'),
              generatorComptence(c, 'Curiosité', 4),
              generatorComptence(c, 'Illustrator', 3),
              generatorComptence(c, 'Photoshop', 2),
              generatorTitleComp(c, 'Compétences en langage de programmation'),
              generatorComptence(c, 'Python', 3),
              generatorComptence(c, 'C', 3),
              generatorComptence(c, 'Java', 2),
              generatorComptence(c, 'dart', 2),
              generatorComptence(c, 'html', 4),
              generatorComptence(c, 'css', 2),
              generatorTitleComp(c, 'Compétences en analyse'),
              generatorComptence(c, 'Observation', 4),
              generatorComptence(c, 'R', 3),
              generatorComptence(c, 'Python', 2),
            ],
          ),
        )
      ],
    );
  }
}
