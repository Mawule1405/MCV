import 'package:flutter/material.dart';
import 'package:mycv/constants/consts_string.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//Importation des fichiers screens et components
import '../components/drawer_component.dart';

//Importation des constantes
import '../constants/consts_color.dart';
import '../constants/consts_widget.dart';
import '../constants/consts_number.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          mcvGAbout,
          style: styleAppBarTitle,
        ),
        backgroundColor: const Color(mcvOrange),
      ),
      drawer:const DrawerComponent(),
      body: _aboutBody(context),
    );
  }

  Widget _aboutBody(BuildContext c) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              AnimatedContainer(
                height: 100.0,
                color: const Color(mcvOrange),
                duration: const Duration(seconds: 5),
                padding: const EdgeInsets.all(20.0),
                child: AnimatedTextKit(
                  pause: const Duration(seconds: 1),
                  animatedTexts: [
                    generatorAnimated(describeAnime1, duree: dureeAnime),
                    generatorAnimated(describeAnime2, duree: dureeAnime),
                    generatorAnimated(describeAnime3, duree: dureeAnime),
                  ],
                  totalRepeatCount: 1000,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  children: [
                    Text(
                      aboutPar1,
                      softWrap: true,
                    ),
                    separateHAbout,
                    Text(
                      aboutPar2,
                      softWrap: true,
                    ),
                    separateHAbout,
                    Text(
                      aboutPar3,
                      softWrap: true,
                    ),
                    separateHAboutBG,
                    Text(
                      'copyright',
                      softWrap: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
