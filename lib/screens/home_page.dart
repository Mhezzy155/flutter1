import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list bisa ambil di json klo API. tapi di convert dulu
  List<Map<String, dynamic>> medCat = [
    {'icon': FontAwesomeIcons.userDoctor, 'category': 'General'},
    {'icon': FontAwesomeIcons.userDoctor, 'category': 'Ambatukam'},
    {'icon': FontAwesomeIcons.userDoctor, 'category': 'Ambatubas'},
    {'icon': FontAwesomeIcons.userDoctor, 'category': 'Ambatunat'},
    {'icon': FontAwesomeIcons.userDoctor, 'category': 'Tulalit'},
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Si imut', //bikin mentahan aja dulu wak
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: CircleAvatar(radius: 30)),
                ],
              ),
              Config.mediumSpacing,
              // category
              Text(
                'Category',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Config.smallSpacing,
              // category list
              SizedBox(
                height: Config.widthSize * 0.05,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(medCat.length, (index) {
                    return Card(
                      margin: const EdgeInsets.only(right: 20),
                      color: Config.primaryColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FaIcon(medCat[index]['icon'], color: Colors.white),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
