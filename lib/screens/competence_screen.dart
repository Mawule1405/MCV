import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:mycv/constants/consts_widget.dart';

//Importation des constantes
import '../constants/consts_color.dart';
// import '../constants/consts_widget.dart';

//Importation de sceens et de components
import '../components/drawer_component.dart';

class CompetenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(mcvOrange),
        title: Text(
          'cccc',
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
              generatorTitleComp(c, 'Competences en enseignements'),
              generatorComptence(c, 'tototo', 4),
            ],
          ),
        )
      ],
    );
  }
}
