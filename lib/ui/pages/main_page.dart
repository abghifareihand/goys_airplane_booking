import 'package:bwa_airplane/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationItem(
                imageUrl: 'assets/bottom_icon_1.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/bottom_icon_2.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/bottom_icon_3.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/bottom_icon_4.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
