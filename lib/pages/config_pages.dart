import 'package:app_pratique/pages/home/home_page.dart';
import 'package:app_pratique/pages/profile/profile_page.dart';
import 'package:app_pratique/pages/trainings/training_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'instructions/instructions_page.dart';

class ConfigPages extends StatefulWidget {
  const ConfigPages({Key? key}) : super(key: key);

  @override
  State<ConfigPages> createState() => _ConfigPagesState();
}

class _ConfigPagesState extends State<ConfigPages> {
  int pageIndex = 1;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  void setPageActive(int page) {
    setState(() {
      pageIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (page) {
          pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Treino',
            icon: Icon(
              FontAwesomeIcons.clipboardList,
              size: 18,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              FontAwesomeIcons.house,
              size: 18,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Conta',
            icon: Icon(
              FontAwesomeIcons.user,
              size: 18,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: setPageActive,
        children: const [
          TrainingPage(),
          HomePage(),
          ProfilePage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.circleQuestion,
          size: 18,
        ),
      ),
    );
  }
}
