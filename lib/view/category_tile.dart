import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studiess_app/theme.dart';

class CategoryTile extends StatelessWidget {
  final String iconCategory;
  final String nameCategory;
  final String courseCategory;

  const CategoryTile(
      {required this.iconCategory,
      required this.nameCategory,
      required this.courseCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white,
      ),
      width: 120.0,
      height: 120.0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(iconCategory, height: 42.0, width: 42.0,
            ),
            SizedBox(height: 17.0,),
            Text(nameCategory, style: darkBlueTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600),),
            SizedBox(height: 4.0,),
            Text(courseCategory, style: darkGreyTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
