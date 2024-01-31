import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

//Importation des screens et des components
import 'package:mycv/components/drawer_component.dart';

//Importation des constantes
import '../constants/consts_color.dart';
import '../constants/consts_string.dart';
import '../constants/consts_widget.dart';

class CallScreen extends StatelessWidget {
  CallScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(mcvGContacter, style: styleAppBarTitle),
          backgroundColor: Color(mcvOrange)),
      drawer: DrawerComponent(),
      body: _callBody(context),
    );
  }

  //fonction de texte de connections
  void _launchUrl(Uri url, BuildContext c) async {
    if (!await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      showDialog(
        context: c,
        builder: (c) => AlertDialog(
          title: Text(
            dialogTitle,
            style: styleSmallTitle,
          ),
          content: Text(
            dialogContent,
            style: styleSmallTitle,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(c, 'OK'),
              child: Text(
                dialogAccept,
              ),
            ),
          ],
          backgroundColor: Color(mcvOrange),
        ),
      );
    }
  }

//Fonction pour lancer un appel direct
  void _callNumber() async {
    const number = '0022893497606';
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  //Definition de la fonction de body
  Widget _callBody(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            //Ligne 1---------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Whatsapp
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 20.0, right: 0),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () => _launchUrl(
                          Uri(
                              scheme: 'https',
                              host: 'wa.me',
                              path: '+24174630473'),
                          context),
                    ),
                  ),

                  //Tiktok
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 0.0, right: 20),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.tiktok,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () => _launchUrl(
                          Uri(
                              scheme: 'https',
                              host: 'tiktok.com',
                              path: '@mathias05153'),
                          context),
                    ),
                  ),
                ],
              ),
            ),

            //Ligne 2---------------------------------

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Linkedin
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 20.0, right: 0),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () =>
                          _launchUrl(Uri.parse(linkdedinLink), context),
                    ),
                  ),

                  //telephone
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 0.0, right: 20),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.phone,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: _callNumber,
                    ),
                  ),
                ],
              ),
            ),

            //Ligne 3----------------
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //facebook
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 20.0, right: 0),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () =>
                          _launchUrl(Uri.parse(facebookLink), context),
                    ),
                  ),

                  //telegram
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 0.0, right: 20),
                    child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.telegram,
                          size: MediaQuery.of(context).size.width / 3,
                          color: const Color(mcvBlack),
                        ),
                        onPressed: () => _launchUrl(
                            Uri(
                                scheme: 'https',
                                host: 'telegram',
                                path: '+24174630473'),
                            context)),
                  ),
                ],
              ),
            ),

            //Ligne 4-----------------------
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Linkedin
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 20.0, right: 0),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.sms,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () => _launchUrl(Uri.parse(smsLink), context),
                    ),
                  ),

                  //telephone
                  Card(
                    margin: EdgeInsets.only(top: 10, left: 0.0, right: 20),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.squareEnvelope,
                        size: MediaQuery.of(context).size.width / 3,
                        color: const Color(mcvBlack),
                      ),
                      onPressed: () => _launchUrl(Uri.parse(mailLink), context),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
