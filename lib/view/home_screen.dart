import 'package:flutter/material.dart';
import 'package:studiess_app/theme.dart';
import 'package:studiess_app/view/category_tile.dart';
import 'package:studiess_app/view/popular_course_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/home_profile.png',
                    width: 35.0,
                    height: 35.0,
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.white,
                    ),
                    width: 32.0,
                    height: 32.0,
                    child: Icon(
                      Icons.search,
                      color: darkBlueColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.white,
                    ),
                    width: 32.0,
                    height: 32.0,
                    child: Image.asset('assets/images/notification.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Text(
                'Want to Study Class \nwhats Today?',
                style: darkBlueTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Row(
                  children: [
                    CategoryTile(
                        iconCategory: 'assets/images/icon_design.png',
                        nameCategory: 'Design',
                        courseCategory: '49 courses'),
                    SizedBox(
                      width: 12.0,
                    ),
                    CategoryTile(
                        iconCategory: 'assets/images/icon_softskill.png',
                        nameCategory: 'Soft Skill',
                        courseCategory: '12 courses'),
                    SizedBox(
                      width: 12.0,
                    ),
                    CategoryTile(
                        iconCategory: 'assets/images/icon_art.png',
                        nameCategory: 'Art',
                        courseCategory: '50 courses'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Course',
                    style: darkBlueTextStyle.copyWith(
                        fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Show all',
                    style: lightBlueTextStyle.copyWith(fontSize: 10.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                PopularCourseTile(
                    popularImage: 'assets/images/img_ui_design.png',
                    titlePopular: 'UI Design : Wireframe to Visual Design',
                    ratePopular: '4016'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
