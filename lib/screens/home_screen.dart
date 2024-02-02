import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:mycv/constants/consts_widget.dart';
// import 'package:flutter/services.dart';

//Importation of a constants values
import '../constants/consts_color.dart';
import '../constants/consts_image.dart';
import '../constants/consts_string.dart';

//Importation des screen et des components
import '../components/drawer_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          mcvGAccueil,
          style: styleAppBarTitle,
        ),
        backgroundColor: const Color(mcvOrange),
      ),
      drawer: const DrawerComponent(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage(appIconMcv),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: FAProgressBar(
                size: 10,
                currentValue: 100,
                animatedDuration: const Duration(seconds: 5),
                backgroundColor: Colors.black,
                progressColor: const Color(mcvOrange),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Column(
                children: [
                  Text(
                    "HELOU Komlan Mawulé",
                    style: styleSmallTitle,
                  ),
                  Text(
                    'Né le 14/05/1996 à Aného-Togo',
                    style: styleSmallTitle,
                  ),
                  Text(
                    'Ingénieur Informaticien',
                    style: styleSmallTitle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
